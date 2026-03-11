defmodule Adyen.TerminalAPI.V1.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          LoyaltyData: [Adyen.TerminalAPI.V1.LoyaltyData.t()] | nil,
          PaymentData: Adyen.TerminalAPI.V1.PaymentData.t() | nil,
          PaymentTransaction: Adyen.TerminalAPI.V1.PaymentTransaction.t(),
          SaleData: Adyen.TerminalAPI.V1.SaleData.t()
        }

  defstruct [:LoyaltyData, :PaymentData, :PaymentTransaction, :SaleData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      LoyaltyData: [{Adyen.TerminalAPI.V1.LoyaltyData, :t}],
      PaymentData: {Adyen.TerminalAPI.V1.PaymentData, :t},
      PaymentTransaction: {Adyen.TerminalAPI.V1.PaymentTransaction, :t},
      SaleData: {Adyen.TerminalAPI.V1.SaleData, :t}
    ]
  end
end
