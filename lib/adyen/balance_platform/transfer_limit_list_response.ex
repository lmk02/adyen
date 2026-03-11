defmodule Adyen.BalancePlatform.TransferLimitListResponse do
  @moduledoc """
  Provides struct and type for a TransferLimitListResponse
  """

  @type t :: %__MODULE__{transferLimits: [Adyen.BalancePlatform.TransferLimit.t()]}

  defstruct [:transferLimits]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transferLimits: [{Adyen.BalancePlatform.TransferLimit, :t}]]
  end
end
