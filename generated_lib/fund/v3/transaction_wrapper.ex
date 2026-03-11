defmodule Adyen.Fund.V3.TransactionWrapper do
  @moduledoc """
  Provides struct and type for a TransactionWrapper
  """

  @type t :: %__MODULE__{Transaction: Adyen.Fund.V3.Transaction.t() | nil}

  defstruct [:Transaction]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [Transaction: {Adyen.Fund.V3.Transaction, :t}]
  end
end
