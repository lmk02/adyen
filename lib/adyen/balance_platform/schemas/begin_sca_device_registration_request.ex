defmodule Adyen.BalancePlatform.BeginScaDeviceRegistrationRequest do
  @moduledoc """
  Provides struct and type for a BeginScaDeviceRegistrationRequest
  """

  @type t :: %__MODULE__{name: String.t(), sdkOutput: String.t()}

  defstruct [:name, :sdkOutput]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [name: :string, sdkOutput: :string]
  end
end
