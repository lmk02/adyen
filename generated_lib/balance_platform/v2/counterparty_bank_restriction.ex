defmodule Adyen.BalancePlatform.V2.CounterpartyBankRestriction do
  @moduledoc """
  Provides struct and type for a CounterpartyBankRestriction
  """

  @type t :: %__MODULE__{
          operation: String.t(),
          value: [Adyen.BalancePlatform.V2.BankIdentification.t()] | nil
        }

  defstruct [:operation, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [operation: :string, value: [{Adyen.BalancePlatform.V2.BankIdentification, :t}]]
  end
end
