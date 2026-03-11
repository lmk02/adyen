defmodule Adyen.OpenBanking.AccountParty do
  @moduledoc """
  Provides struct and type for a AccountParty
  """

  @type t :: %__MODULE__{identity: Adyen.OpenBanking.Identity.t(), role: String.t()}

  defstruct [:identity, :role]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      identity: {Adyen.OpenBanking.Identity, :t},
      role: {:enum, ["HOLDER", "AUTHORIZED_USER", "OTHER", "UNKNOWN"]}
    ]
  end
end
