defmodule Adyen.Checkout.CreateOrderResponse do
  @moduledoc """
  Provides struct and type for a CreateOrderResponse
  """

  alias Adyen.Checkout.Amount
  alias Adyen.Checkout.FraudResult

  @type t :: %__MODULE__{
          additionalData: map | nil,
          amount: Amount.t(),
          expiresAt: String.t(),
          fraudResult: FraudResult.t() | nil,
          orderData: String.t(),
          pspReference: String.t() | nil,
          reference: String.t() | nil,
          refusalReason: String.t() | nil,
          remainingAmount: Amount.t(),
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
      amount: {Amount, :t},
      expiresAt: :string,
      fraudResult: {FraudResult, :t},
      orderData: :string,
      pspReference: :string,
      reference: :string,
      refusalReason: :string,
      remainingAmount: {Amount, :t},
      resultCode: {:const, "Success"}
    ]
  end
end
