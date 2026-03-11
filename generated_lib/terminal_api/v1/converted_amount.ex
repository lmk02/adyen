defmodule Adyen.TerminalAPI.V1.ConvertedAmount do
  @moduledoc """
  Provides struct and type for a ConvertedAmount
  """

  @type t :: %__MODULE__{AmountValue: number, Currency: String.t()}

  defstruct [:AmountValue, :Currency]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [AmountValue: :number, Currency: :string]
  end
end
