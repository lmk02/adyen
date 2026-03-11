defmodule Adyen.BalancePlatform.V2.FinishScaDeviceRegistrationRequest do
  @moduledoc """
  Provides struct and type for a FinishScaDeviceRegistrationRequest
  """

  @type t :: %__MODULE__{sdkOutput: String.t()}

  defstruct [:sdkOutput]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [sdkOutput: :string]
  end
end
