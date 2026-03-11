defmodule Adyen.BalancePlatform.GetNetworkTokenResponse do
  @moduledoc """
  Provides struct and type for a GetNetworkTokenResponse
  """

  @type t :: %__MODULE__{token: Adyen.BalancePlatform.NetworkToken.t()}

  defstruct [:token]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [token: {Adyen.BalancePlatform.NetworkToken, :t}]
  end
end
