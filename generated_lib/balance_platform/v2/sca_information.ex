defmodule Adyen.BalancePlatform.V2.ScaInformation do
  @moduledoc """
  Provides struct and type for a ScaInformation
  """

  @type t :: %__MODULE__{exemption: String.t() | nil, status: String.t()}

  defstruct [:exemption, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      exemption:
        {:enum,
         ["setByPlatform", "initialLimit", "lowerLimit", "notRegulated", "alreadyPerformed"]},
      status: {:enum, ["notPerformed", "pending", "performed"]}
    ]
  end
end
