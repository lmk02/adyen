defmodule Adyen.TerminalAPI.SaleTerminalData do
  @moduledoc """
  Provides struct and type for a SaleTerminalData
  """

  @type t :: %__MODULE__{TotalsGroupID: String.t() | nil}

  defstruct [:TotalsGroupID]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [TotalsGroupID: :string]
  end
end
