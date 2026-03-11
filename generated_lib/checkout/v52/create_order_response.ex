defmodule Adyen.Checkout.V52.CreateOrderResponse do
  @moduledoc """
  Provides struct and type for a CreateOrderResponse
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          expiresAt: String.t(),
          fraudResult: Adyen.Checkout.V52.FraudResult.t() | nil,
          orderData: String.t(),
          pspReference: String.t() | nil,
          reference: String.t() | nil,
          refusalReason: String.t() | nil,
          remainingAmount: Adyen.Checkout.V52.Amount.t(),
          resultCode: String.t()
        }

  defstruct [
    :additionalData,
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
      expiresAt: :string,
      fraudResult: {Adyen.Checkout.V52.FraudResult, :t},
      orderData: :string,
      pspReference: :string,
      reference: :string,
      refusalReason: :string,
      remainingAmount: {Adyen.Checkout.V52.Amount, :t},
      resultCode: {:const, "Success"}
    ]
  end
end
