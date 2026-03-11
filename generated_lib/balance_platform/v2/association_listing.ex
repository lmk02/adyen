defmodule Adyen.BalancePlatform.V2.AssociationListing do
  @moduledoc """
  Provides struct and type for a AssociationListing
  """

  @type t :: %__MODULE__{
          createdAt: DateTime.t(),
          entityId: String.t(),
          entityType: String.t(),
          scaDeviceId: String.t(),
          scaDeviceName: String.t() | nil,
          scaDeviceType: String.t(),
          status: String.t()
        }

  defstruct [
    :createdAt,
    :entityId,
    :entityType,
    :scaDeviceId,
    :scaDeviceName,
    :scaDeviceType,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      createdAt: {:string, "date-time"},
      entityId: :string,
      entityType: {:enum, ["accountHolder", "paymentInstrument"]},
      scaDeviceId: :string,
      scaDeviceName: :string,
      scaDeviceType: {:enum, ["browser", "ios", "android"]},
      status: {:enum, ["pendingApproval", "active"]}
    ]
  end
end
