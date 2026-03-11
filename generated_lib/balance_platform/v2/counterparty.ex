defmodule Adyen.BalancePlatform.V2.Counterparty do
  @moduledoc """
  Provides struct and type for a Counterparty
  """

  @type t :: %__MODULE__{
          bankAccount: Adyen.BalancePlatform.V2.BankAccount.t() | nil,
          transferInstrumentId: String.t() | nil
        }

  defstruct [:bankAccount, :transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [bankAccount: {Adyen.BalancePlatform.V2.BankAccount, :t}, transferInstrumentId: :string]
  end
end
