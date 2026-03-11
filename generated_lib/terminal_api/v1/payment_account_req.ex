defmodule Adyen.TerminalAPI.V1.PaymentAccountReq do
  @moduledoc """
  Provides struct and type for a PaymentAccountReq
  """

  @type t :: %__MODULE__{
          AccountType: String.t() | nil,
          CardAcquisitionReference: Adyen.TerminalAPI.V1.TransactionIDType.t() | nil,
          PaymentInstrumentData: Adyen.TerminalAPI.V1.PaymentInstrumentData.t() | nil
        }

  defstruct [:AccountType, :CardAcquisitionReference, :PaymentInstrumentData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AccountType:
        {:enum,
         [
           "CardTotals",
           "Checking",
           "CreditCard",
           "Default",
           "EpurseCard",
           "Investment",
           "Savings",
           "Universal"
         ]},
      CardAcquisitionReference: {Adyen.TerminalAPI.V1.TransactionIDType, :t},
      PaymentInstrumentData: {Adyen.TerminalAPI.V1.PaymentInstrumentData, :t}
    ]
  end
end
