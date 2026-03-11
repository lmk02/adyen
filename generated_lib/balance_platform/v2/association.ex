defmodule Adyen.BalancePlatform.V2.Association do
  @moduledoc """
  Provides struct and type for a Association
  """

  @type t :: %__MODULE__{
          entityId: String.t(),
          entityType: String.t(),
          scaDeviceId: String.t(),
          status: String.t()
        }

  defstruct [:entityId, :entityType, :scaDeviceId, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      entityId: :string,
      entityType: {:enum, ["accountHolder", "paymentInstrument"]},
      scaDeviceId: :string,
      status: {:enum, ["pendingApproval", "active"]}
    ]
  end
end
