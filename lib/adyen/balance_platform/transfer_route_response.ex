defmodule Adyen.BalancePlatform.TransferRouteResponse do
  @moduledoc """
  Provides struct and type for a TransferRouteResponse
  """

  alias Adyen.BalancePlatform.TransferRoute

  @type t :: %__MODULE__{transferRoutes: [TransferRoute.t()] | nil}

  defstruct [:transferRoutes]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transferRoutes: [{TransferRoute, :t}]]
  end
end
