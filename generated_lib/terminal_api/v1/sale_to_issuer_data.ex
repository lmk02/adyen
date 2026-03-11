defmodule Adyen.TerminalAPI.V1.SaleToIssuerData do
  @moduledoc """
  Provides struct and type for a SaleToIssuerData
  """

  @type t :: %__MODULE__{StatementReference: String.t() | nil}

  defstruct [:StatementReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [StatementReference: :string]
  end
end
