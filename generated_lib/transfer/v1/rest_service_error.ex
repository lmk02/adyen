defmodule Adyen.Transfer.V1.RestServiceError do
  @moduledoc """
  Provides struct and type for a RestServiceError
  """

  @type t :: %__MODULE__{
          detail: String.t(),
          errorCode: String.t(),
          instance: String.t() | nil,
          invalidFields: [Adyen.Transfer.V1.InvalidField.t()] | nil,
          requestId: String.t() | nil,
          response: map | nil,
          status: integer,
          title: String.t(),
          type: String.t()
        }

  defstruct [
    :detail,
    :errorCode,
    :instance,
    :invalidFields,
    :requestId,
    :response,
    :status,
    :title,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      detail: :string,
      errorCode: :string,
      instance: :string,
      invalidFields: [{Adyen.Transfer.V1.InvalidField, :t}],
      requestId: :string,
      response: :map,
      status: {:integer, "int32"},
      title: :string,
      type: :string
    ]
  end
end
