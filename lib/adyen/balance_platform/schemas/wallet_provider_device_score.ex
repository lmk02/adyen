defmodule Adyen.BalancePlatform.WalletProviderDeviceScore do
  @moduledoc """
  Provides struct and type for a WalletProviderDeviceScore
  """

  @type t :: %__MODULE__{operation: String.t(), value: integer | nil}

  defstruct [:operation, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [operation: :string, value: {:integer, "int32"}]
  end
end
