defmodule Adyen.Checkout.V72.DefaultErrorResponseEntity do
  @moduledoc """
  Provides struct and type for a DefaultErrorResponseEntity
  """

  @type t :: %__MODULE__{
          detail: String.t() | nil,
          errorCode: String.t() | nil,
          instance: String.t() | nil,
          invalidFields: [Adyen.Checkout.V72.InvalidField.t()] | nil,
          requestId: String.t() | nil,
          status: integer | nil,
          title: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:detail, :errorCode, :instance, :invalidFields, :requestId, :status, :title, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      detail: :string,
      errorCode: :string,
      instance: :string,
      invalidFields: [{Adyen.Checkout.V72.InvalidField, :t}],
      requestId: :string,
      status: {:integer, "int32"},
      title: :string,
      type: :string
    ]
  end
end
