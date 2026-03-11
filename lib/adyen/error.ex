defmodule Adyen.Error do
  @moduledoc """
  Error struct for Adyen API errors.

  This struct normalizes error responses from across different Adyen APIs (Checkout,
  Transfers, Balance Platform) into a consistent format.

  ## Fields

  - `:status` - HTTP status code (e.g., 400, 401, 422, 500)
  - `:error_code` - Adyen's specific error code (e.g., "14_012")
  - `:message` - Human-readable error message. This is derived from `message`, `title`,
    `detail`, or `invalidFields` depending on the API.
  - `:psp_reference` - Unique reference for the request (or `requestId` for some APIs)
  - `:error_type` - Type of error (e.g., "internal", "validation")
  - `:invalid_fields` - List of validation errors for specific fields, if applicable
  - `:original_error` - The raw error response map from the API
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
  @spec to_string(Adyen.Error.t()) :: binary()
  def to_string(%Adyen.Error{message: message, error_code: code, status: status, error_type: type}) do
    [
      if(status, do: "HTTP #{status}"),
      if(type, do: "(#{type})"),
      code,
      message
    ]
    |> Enum.reject(&is_nil/1)
    |> case do
      [] -> "Adyen Error"
      parts -> Enum.join(parts, " - ")
    end
  end
end
