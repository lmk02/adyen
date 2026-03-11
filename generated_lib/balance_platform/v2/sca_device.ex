defmodule Adyen.BalancePlatform.V2.ScaDevice do
  @moduledoc """
  Provides struct and type for a ScaDevice
  """

  @type t :: %__MODULE__{id: String.t(), name: String.t(), type: String.t()}

  defstruct [:id, :name, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :string, name: :string, type: {:enum, ["browser", "ios", "android"]}]
  end
end
