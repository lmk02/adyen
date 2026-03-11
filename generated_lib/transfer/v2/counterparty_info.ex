defmodule Adyen.Transfer.V2.CounterpartyInfo do
  @moduledoc """
  Provides struct and type for a CounterpartyInfo
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          bankAccount: Adyen.Transfer.V2.BankAccountInfo.t() | nil,
          transferInstrumentId: String.t() | nil
        }

  defstruct [:balanceAccountId, :bankAccount, :transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountId: :string,
      bankAccount: {Adyen.Transfer.V2.BankAccountInfo, :t},
      transferInstrumentId: :string
    ]
  end
end
