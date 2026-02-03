defmodule Adyen.Checkout.PaymentMethodsResponse do
  @moduledoc """
  Provides struct and type for a PaymentMethodsResponse
  """

  alias Adyen.Checkout.PaymentMethod
  alias Adyen.Checkout.StoredPaymentMethod

  @type t :: %__MODULE__{
          paymentMethods: [PaymentMethod.t()] | nil,
          storedPaymentMethods: [StoredPaymentMethod.t()] | nil
        }

  defstruct [:paymentMethods, :storedPaymentMethods]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      paymentMethods: [{PaymentMethod, :t}],
      storedPaymentMethods: [{StoredPaymentMethod, :t}]
    ]
  end
end
