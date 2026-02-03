defmodule Adyen.BalancePlatform.ListNetworkTokensResponse do
  @moduledoc """
  Provides struct and type for a ListNetworkTokensResponse
  """

  alias Adyen.BalancePlatform.NetworkToken

  @type t :: %__MODULE__{networkTokens: [NetworkToken.t()] | nil}

  defstruct [:networkTokens]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [networkTokens: [{NetworkToken, :t}]]
  end
end
