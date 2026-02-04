defmodule Adyen.BalancePlatform.TransferRouteResponse do
  @moduledoc """
  Provides struct and type for a TransferRouteResponse
  """

  @type t :: %__MODULE__{transferRoutes: [Adyen.BalancePlatform.TransferRoute.t()] | nil}

  defstruct [:transferRoutes]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transferRoutes: [{Adyen.BalancePlatform.TransferRoute, :t}]]
  end
end
