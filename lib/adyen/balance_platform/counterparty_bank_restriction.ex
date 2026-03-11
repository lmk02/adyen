defmodule Adyen.BalancePlatform.CounterpartyBankRestriction do
  @moduledoc """
  Provides struct and type for a CounterpartyBankRestriction
  """

  @type t :: %__MODULE__{
          operation: String.t(),
          value: [Adyen.BalancePlatform.BankIdentification.t()] | nil
        }

  defstruct [:operation, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [operation: :string, value: [{Adyen.BalancePlatform.BankIdentification, :t}]]
  end
end
