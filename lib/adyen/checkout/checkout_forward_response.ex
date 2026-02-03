defmodule Adyen.Checkout.CheckoutForwardResponse do
  @moduledoc """
  Provides struct and type for a CheckoutForwardResponse
  """

  alias Adyen.Checkout.CheckoutForwardResponseFromUrl

  @type t :: %__MODULE__{
          merchantReference: String.t() | nil,
          pspReference: String.t() | nil,
          response: CheckoutForwardResponseFromUrl.t(),
          storedPaymentMethodId: String.t() | nil
        }

  defstruct [:merchantReference, :pspReference, :response, :storedPaymentMethodId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantReference: :string,
      pspReference: :string,
      response: {CheckoutForwardResponseFromUrl, :t},
      storedPaymentMethodId: :string
    ]
  end
end
