defmodule Adyen.Checkout.BalanceCheckResponse do
  @moduledoc """
  Provides struct and type for a BalanceCheckResponse
  """

  alias Adyen.Checkout.Amount
  alias Adyen.Checkout.FraudResult

  @type t :: %__MODULE__{
          additionalData: map | nil,
          balance: Amount.t(),
          fraudResult: FraudResult.t() | nil,
          pspReference: String.t() | nil,
          refusalReason: String.t() | nil,
          resultCode: String.t(),
          transactionLimit: Amount.t() | nil
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
      balance: {Amount, :t},
      fraudResult: {FraudResult, :t},
      pspReference: :string,
      refusalReason: :string,
      resultCode: {:enum, ["Success", "NotEnoughBalance", "Failed"]},
      transactionLimit: {Amount, :t}
    ]
  end
end
