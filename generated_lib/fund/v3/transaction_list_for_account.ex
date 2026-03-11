defmodule Adyen.Fund.V3.TransactionListForAccount do
  @moduledoc """
  Provides struct and type for a TransactionListForAccount
  """

  @type t :: %__MODULE__{accountCode: String.t(), page: integer}

  defstruct [:accountCode, :page]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountCode: :string, page: {:integer, "int32"}]
  end
end
