defmodule Adyen.Error do
  @moduledoc """
  Error struct for Adyen API errors.

  ## Fields

  - `:status` - HTTP status code
  - `:error_code` - Adyen error code
  - `:message` - Human-readable error message
  - `:psp_reference` - Payment service provider reference
  - `:error_type` - Type of error
  """

  @type t :: %__MODULE__{
          status: integer() | nil,
          error_code: String.t() | nil,
          message: String.t() | nil,
          psp_reference: String.t() | nil,
          error_type: String.t() | nil,
          invalid_fields: list(map()) | nil,
          original_error: map() | nil
        }

  defstruct [:status, :error_code, :message, :psp_reference, :error_type, :invalid_fields, :original_error]

  @doc """
  Create an error struct from an API response.
  """
  @spec from_response(integer(), map() | String.t()) :: t()
  def from_response(status, body) when is_map(body) do
    # Common fields across Adyen APIs
    # Checkout: errorCode, message, pspReference, errorType
    # LEM (Transfers/Balance): errorCode, title, detail, requestId, type, invalidFields

    error_code = body["errorCode"] || body["code"]
    psp_reference = body["pspReference"] || body["requestId"]
    error_type = body["errorType"] || body["type"]
    invalid_fields = body["invalidFields"]

    message =
      body["message"] ||
        format_problem_details(body["title"], body["detail"]) ||
        format_invalid_fields(invalid_fields)

    %__MODULE__{
      status: status,
      error_code: error_code,
      message: message,
      psp_reference: psp_reference,
      error_type: error_type,
      invalid_fields: invalid_fields,
      original_error: body
    }
  end

  def from_response(status, body) when is_binary(body) do
    %__MODULE__{status: status, message: body}
  end

  def from_response(status, _body) do
    %__MODULE__{status: status, message: "Unknown error"}
  end

  defp format_problem_details(nil, nil), do: nil
  defp format_problem_details(title, nil), do: title
  defp format_problem_details(nil, detail), do: detail
  defp format_problem_details(title, detail), do: "#{title}: #{detail}"

  defp format_invalid_fields(nil), do: nil
  defp format_invalid_fields([]), do: nil

  defp format_invalid_fields(fields) when is_list(fields) do
    "Validation error: " <>
      Enum.map_join(fields, ", ", fn f ->
        name = f["name"] || "?"
        msg = f["message"] || f["error"] || "invalid"
        "#{name} (#{msg})"
      end)
  end

  defp format_invalid_fields(_), do: nil

  @doc """
  Create an error struct from an exception.
  """
  @spec from_exception(Exception.t()) :: t()
  def from_exception(exception) do
    %__MODULE__{message: Exception.message(exception)}
  end
end

defimpl String.Chars, for: Adyen.Error do
  def to_string(%Adyen.Error{message: message, error_code: code, status: status, error_type: type}) do
    parts = []
    parts = if status, do: ["HTTP #{status}" | parts], else: parts
    parts = if type, do: ["(#{type})" | parts], else: parts
    parts = if code, do: ["#{code}" | parts], else: parts
    parts = if message, do: [message | parts], else: parts

    if parts == [] do
      "Adyen Error"
    else
      Enum.join(Enum.reverse(parts), " - ")
    end
  end
end
