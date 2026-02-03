defmodule Adyen.BalancePlatform.CounterpartyBankRestriction do
  @moduledoc """
  Provides struct and type for a CounterpartyBankRestriction
  """

  alias Adyen.BalancePlatform.BankIdentification

  @type t :: %__MODULE__{
          operation: String.t(),
          value: [BankIdentification.t()] | nil
        }

  defstruct [:operation, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [operation: :string, value: [{BankIdentification, :t}]]
  end
end
