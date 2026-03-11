defmodule Adyen.Transfer.V1.Counterparty do
  @moduledoc """
  Provides struct and type for a Counterparty
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          bankAccount: Adyen.Transfer.V1.BankAccountInfo.t() | nil,
          merchant: Adyen.Transfer.V1.MerchantData.t() | nil,
          transferInstrumentId: String.t() | nil
        }

  defstruct [:balanceAccountId, :bankAccount, :merchant, :transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountId: :string,
      bankAccount: {Adyen.Transfer.V1.BankAccountInfo, :t},
      merchant: {Adyen.Transfer.V1.MerchantData, :t},
      transferInstrumentId: :string
    ]
  end
end
