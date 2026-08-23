defmodule Adyen.Checkout.V68.CheckoutErrorResponseEntity do
  @moduledoc """
  Provides struct and type for a CheckoutErrorResponseEntity
  """

  @type t :: %__MODULE__{
          errorCode: String.t(),
          errorType: String.t(),
          message: String.t(),
          pspReference: String.t() | nil,
          status: integer | nil
        }

  defstruct [:errorCode, :errorType, :message, :pspReference, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      errorCode: :string,
      errorType: :string,
      message: :string,
      pspReference: :string,
      status: {:integer, "int32"}
    ]
  end
end
