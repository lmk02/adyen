defmodule Adyen.BalancePlatform.Counterparty do
  @moduledoc """
  Provides struct and type for a Counterparty
  """

  alias Adyen.BalancePlatform.BankAccount

  @type t :: %__MODULE__{
          bankAccount: BankAccount.t() | nil,
          transferInstrumentId: String.t() | nil
        }

  defstruct [:bankAccount, :transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [bankAccount: {BankAccount, :t}, transferInstrumentId: :string]
  end
end
