defmodule Adyen.BalancePlatform.V1.GrantLimitWrapper do
  @moduledoc """
  Provides struct and type for a GrantLimitWrapper
  """

  @type t :: %__MODULE__{GrantLimit: Adyen.BalancePlatform.V1.GrantLimit.t() | nil}

  defstruct [:GrantLimit]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [GrantLimit: {Adyen.BalancePlatform.V1.GrantLimit, :t}]
  end
end
