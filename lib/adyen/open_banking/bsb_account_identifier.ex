defmodule Adyen.OpenBanking.BSBAccountIdentifier do
  @moduledoc """
  Provides struct and type for a BSBAccountIdentifier
  """

  @type t :: %__MODULE__{accountNumber: String.t(), bsbCode: String.t()}

  defstruct [:accountNumber, :bsbCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountNumber: :string, bsbCode: :string]
  end
end
