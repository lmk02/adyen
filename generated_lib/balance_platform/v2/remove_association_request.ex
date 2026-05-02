defmodule Adyen.BalancePlatform.V2.RemoveAssociationRequest do
  @moduledoc """
  Provides struct and type for a RemoveAssociationRequest
  """

  @type t :: %__MODULE__{entityId: String.t(), entityType: String.t(), scaDeviceIds: [String.t()]}

  defstruct [:entityId, :entityType, :scaDeviceIds]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      entityId: :string,
      entityType: {:enum, ["accountHolder", "legalEntity", "paymentInstrument"]},
      scaDeviceIds: [:string]
    ]
  end
end
