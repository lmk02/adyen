defmodule Adyen.BalancePlatform.ListNetworkTokensResponse do
  @moduledoc """
  Provides struct and type for a ListNetworkTokensResponse
  """

  @type t :: %__MODULE__{networkTokens: [Adyen.BalancePlatform.NetworkToken.t()] | nil}

  defstruct [:networkTokens]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [networkTokens: [{Adyen.BalancePlatform.NetworkToken, :t}]]
  end
end
