defmodule Adyen.Accounts.MigratedAccounts do
  @moduledoc """
  Provides struct and type for a MigratedAccounts
  """

  @type t :: %__MODULE__{accountCode: String.t() | nil, balanceAccountId: String.t() | nil}

  defstruct [:accountCode, :balanceAccountId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountCode: :string, balanceAccountId: :string]
  end
end
