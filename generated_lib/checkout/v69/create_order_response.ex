defmodule Adyen.Checkout.V69.CreateOrderResponse do
  @moduledoc """
  Provides struct and type for a CreateOrderResponse
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          amount: Adyen.Checkout.V69.Amount.t(),
          expiresAt: String.t(),
          fraudResult: Adyen.Checkout.V69.FraudResult.t() | nil,
          orderData: String.t(),
          pspReference: String.t() | nil,
          reference: String.t() | nil,
          refusalReason: String.t() | nil,
          remainingAmount: Adyen.Checkout.V69.Amount.t(),
          resultCode: String.t()
        }

  defstruct [
    :additionalData,
    :amount,
    :expiresAt,
    :fraudResult,
    :orderData,
    :pspReference,
    :reference,
    :refusalReason,
    :remainingAmount,
    :resultCode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      amount: {Adyen.Checkout.V69.Amount, :t},
      expiresAt: :string,
      fraudResult: {Adyen.Checkout.V69.FraudResult, :t},
      orderData: :string,
      pspReference: :string,
      reference: :string,
      refusalReason: :string,
      remainingAmount: {Adyen.Checkout.V69.Amount, :t},
      resultCode: {:const, "Success"}
    ]
  end
end
