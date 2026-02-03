defmodule Adyen.BalancePlatform.GetNetworkTokenResponse do
  @moduledoc """
  Provides struct and type for a GetNetworkTokenResponse
  """

  alias Adyen.BalancePlatform.NetworkToken

  @type t :: %__MODULE__{token: NetworkToken.t()}

  defstruct [:token]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [token: {NetworkToken, :t}]
  end
end
