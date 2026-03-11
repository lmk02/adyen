defmodule Adyen.OpenBanking.V1.RIXAccountIdentifier do
  @moduledoc """
  Provides struct and type for a RIXAccountIdentifier
  """

  @type t :: %__MODULE__{accountNumber: String.t(), clearingNumber: String.t()}

  defstruct [:accountNumber, :clearingNumber]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountNumber: :string, clearingNumber: :string]
  end
end
