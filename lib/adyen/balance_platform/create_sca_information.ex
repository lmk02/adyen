defmodule Adyen.BalancePlatform.CreateScaInformation do
  @moduledoc """
  Provides struct and type for a CreateScaInformation
  """

  @type t :: %__MODULE__{exemption: String.t() | nil, scaOnApproval: boolean | nil}

  defstruct [:exemption, :scaOnApproval]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      exemption: {:enum, ["setByPlatform", "initialLimit", "lowerLimit", "notRegulated", "alreadyPerformed"]},
      scaOnApproval: :boolean
    ]
  end
end
