defmodule Adyen.OpenBanking.BACSAccountIdentifier do
  @moduledoc """
  Provides struct and type for a BACSAccountIdentifier
  """

  @type t :: %__MODULE__{accountNumber: String.t(), sortCode: String.t()}

  defstruct [:accountNumber, :sortCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountNumber: :string, sortCode: :string]
  end
end
