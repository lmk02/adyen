defmodule Adyen.Management.V1.PayoutSettings do
  @moduledoc """
  Provides struct and type for a PayoutSettings
  """

  @type t :: %__MODULE__{
          allowed: boolean | nil,
          enabled: boolean | nil,
          enabledFromDate: String.t() | nil,
          id: String.t(),
          priority: String.t() | nil,
          transferInstrumentId: String.t(),
          verificationStatus: String.t() | nil
        }

  defstruct [
    :allowed,
    :enabled,
    :enabledFromDate,
    :id,
    :priority,
    :transferInstrumentId,
    :verificationStatus
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      allowed: :boolean,
      enabled: :boolean,
      enabledFromDate: :string,
      id: :string,
      priority: {:enum, ["first", "normal", "urgent"]},
      transferInstrumentId: :string,
      verificationStatus: {:enum, ["invalid", "pending", "rejected", "valid"]}
    ]
  end
end
