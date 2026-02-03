defmodule Adyen.BalancePlatform.TransactionRuleEntityKey do
  @moduledoc """
  Provides struct and type for a TransactionRuleEntityKey
  """

  @type t :: %__MODULE__{entityReference: String.t() | nil, entityType: String.t() | nil}

  defstruct [:entityReference, :entityType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [entityReference: :string, entityType: :string]
  end
end
