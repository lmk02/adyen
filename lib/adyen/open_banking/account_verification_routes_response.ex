defmodule Adyen.OpenBanking.AccountVerificationRoutesResponse do
  @moduledoc """
  Provides struct and type for a AccountVerificationRoutesResponse
  """

  @type t :: %__MODULE__{routes: [Adyen.OpenBanking.Route.t()]}

  defstruct [:routes]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [routes: [{Adyen.OpenBanking.Route, :t}]]
  end
end
