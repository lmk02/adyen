defmodule Adyen.TerminalAPI.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          LoyaltyData: [Adyen.TerminalAPI.LoyaltyData.t()] | nil,
          PaymentData: Adyen.TerminalAPI.PaymentData.t() | nil,
          PaymentTransaction: Adyen.TerminalAPI.PaymentTransaction.t(),
          SaleData: Adyen.TerminalAPI.SaleData.t()
        }

  defstruct [:LoyaltyData, :PaymentData, :PaymentTransaction, :SaleData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      LoyaltyData: [{Adyen.TerminalAPI.LoyaltyData, :t}],
      PaymentData: {Adyen.TerminalAPI.PaymentData, :t},
      PaymentTransaction: {Adyen.TerminalAPI.PaymentTransaction, :t},
      SaleData: {Adyen.TerminalAPI.SaleData, :t}
    ]
  end
end
