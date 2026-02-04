defmodule Adyen.Checkout.BalanceCheckResponse do
  @moduledoc """
  Provides struct and type for a BalanceCheckResponse
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          balance: Adyen.Checkout.Amount.t(),
          fraudResult: Adyen.Checkout.FraudResult.t() | nil,
          pspReference: String.t() | nil,
          refusalReason: String.t() | nil,
          resultCode: String.t(),
          transactionLimit: Adyen.Checkout.Amount.t() | nil
        }

  defstruct [
    :additionalData,
    :balance,
    :fraudResult,
    :pspReference,
    :refusalReason,
    :resultCode,
    :transactionLimit
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      balance: {Adyen.Checkout.Amount, :t},
      fraudResult: {Adyen.Checkout.FraudResult, :t},
      pspReference: :string,
      refusalReason: :string,
      resultCode: {:enum, ["Success", "NotEnoughBalance", "Failed"]},
      transactionLimit: {Adyen.Checkout.Amount, :t}
    ]
  end
end
