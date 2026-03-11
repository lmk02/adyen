defmodule Adyen.Checkout.V71.StoredPaymentMethodRequest do
  @moduledoc """
  Provides struct and type for a StoredPaymentMethodRequest
  """

  @type t :: %__MODULE__{
          merchantAccount: String.t(),
          paymentMethod: Adyen.Checkout.V71.PaymentMethodToStore.t(),
          recurringProcessingModel: String.t(),
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperReference: String.t()
        }

  defstruct [
    :merchantAccount,
    :paymentMethod,
    :recurringProcessingModel,
    :shopperEmail,
    :shopperIP,
    :shopperReference
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantAccount: :string,
      paymentMethod: {Adyen.Checkout.V71.PaymentMethodToStore, :t},
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      shopperEmail: :string,
      shopperIP: :string,
      shopperReference: :string
    ]
  end
end
