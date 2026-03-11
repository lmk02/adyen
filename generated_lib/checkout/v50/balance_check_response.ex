defmodule Adyen.Checkout.V50.BalanceCheckResponse do
  @moduledoc """
  Provides struct and type for a BalanceCheckResponse
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          balance: Adyen.Checkout.V50.Amount.t(),
          fraudResult: Adyen.Checkout.V50.FraudResult.t() | nil,
          pspReference: String.t() | nil,
          refusalReason: String.t() | nil,
          resultCode: String.t()
        }

  defstruct [:additionalData, :balance, :fraudResult, :pspReference, :refusalReason, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      balance: {Adyen.Checkout.V50.Amount, :t},
      fraudResult: {Adyen.Checkout.V50.FraudResult, :t},
      pspReference: :string,
      refusalReason: :string,
      resultCode: {:enum, ["Success", "NotEnoughBalance", "Failed"]}
    ]
  end
end
