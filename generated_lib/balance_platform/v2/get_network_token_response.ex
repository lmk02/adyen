defmodule Adyen.BalancePlatform.V2.GetNetworkTokenResponse do
  @moduledoc """
  Provides struct and type for a GetNetworkTokenResponse
  """

  @type t :: %__MODULE__{token: Adyen.BalancePlatform.V2.NetworkToken.t()}

  defstruct [:token]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [token: {Adyen.BalancePlatform.V2.NetworkToken, :t}]
  end
end
