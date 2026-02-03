defmodule Adyen.BalancePlatform.TransferLimitListResponse do
  @moduledoc """
  Provides struct and type for a TransferLimitListResponse
  """

  alias Adyen.BalancePlatform.TransferLimit

  @type t :: %__MODULE__{transferLimits: [TransferLimit.t()]}

  defstruct [:transferLimits]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transferLimits: [{TransferLimit, :t}]]
  end
end
