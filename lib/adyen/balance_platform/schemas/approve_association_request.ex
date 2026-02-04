defmodule Adyen.BalancePlatform.ApproveAssociationRequest do
  @moduledoc """
  Provides struct and type for a ApproveAssociationRequest
  """

  @type t :: %__MODULE__{
          entityId: String.t(),
          entityType: String.t(),
          scaDeviceIds: [String.t()],
          status: String.t()
        }

  defstruct [:entityId, :entityType, :scaDeviceIds, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      entityId: :string,
      entityType: {:enum, ["accountHolder", "paymentInstrument"]},
      scaDeviceIds: [:string],
      status: {:enum, ["pendingApproval", "active"]}
    ]
  end
end
