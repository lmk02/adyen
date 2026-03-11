defmodule Adyen.Checkout.V40.StoredPaymentMethodRequest do
  @moduledoc """
  Provides struct and type for a StoredPaymentMethodRequest
  """

  @type t :: %__MODULE__{
          merchantAccount: String.t(),
          paymentMethod: Adyen.Checkout.V40.PaymentMethodToStore.t(),
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperReference: String.t(),
          storingMethod: Adyen.Checkout.V40.PaymentMethodToStore.t() | nil
        }

  defstruct [
    :merchantAccount,
    :paymentMethod,
    :shopperEmail,
    :shopperIP,
    :shopperReference,
    :storingMethod
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantAccount: :string,
      paymentMethod: {Adyen.Checkout.V40.PaymentMethodToStore, :t},
      shopperEmail: :string,
      shopperIP: :string,
      shopperReference: :string,
      storingMethod: {Adyen.Checkout.V40.PaymentMethodToStore, :t}
    ]
  end
end
