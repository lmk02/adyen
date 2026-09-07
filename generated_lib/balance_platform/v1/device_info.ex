defmodule Adyen.BalancePlatform.V1.DeviceInfo do
  @moduledoc """
  Provides struct and type for a DeviceInfo
  """

  @type t :: %__MODULE__{formFactor: String.t() | nil, osName: String.t() | nil}

  defstruct [:formFactor, :osName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [formFactor: :string, osName: :string]
  end
end
