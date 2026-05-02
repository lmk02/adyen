defmodule Adyen.Management.V3.Terminal do
  @moduledoc """
  Provides struct and type for a Terminal
  """

  @type t :: %__MODULE__{
          assignment: Adyen.Management.V3.TerminalAssignment.t() | nil,
          cloudDeviceApiEndpoint: String.t() | nil,
          connectivity: Adyen.Management.V3.TerminalConnectivity.t() | nil,
          countryCode: String.t() | nil,
          firmwareVersion: String.t() | nil,
          id: String.t() | nil,
          installedAPKs: [Adyen.Management.V3.InstalledAPKs.t()] | nil,
          lastActivityAt: DateTime.t() | nil,
          lastTransactionAt: DateTime.t() | nil,
          model: String.t() | nil,
          restartLocalTime: String.t() | nil,
          serialNumber: String.t() | nil
        }

  defstruct [
    :assignment,
    :cloudDeviceApiEndpoint,
    :connectivity,
    :countryCode,
    :firmwareVersion,
    :id,
    :installedAPKs,
    :lastActivityAt,
    :lastTransactionAt,
    :model,
    :restartLocalTime,
    :serialNumber
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assignment: {Adyen.Management.V3.TerminalAssignment, :t},
      cloudDeviceApiEndpoint: :string,
      connectivity: {Adyen.Management.V3.TerminalConnectivity, :t},
      countryCode: :string,
      firmwareVersion: :string,
      id: :string,
      installedAPKs: [{Adyen.Management.V3.InstalledAPKs, :t}],
      lastActivityAt: {:string, "date-time"},
      lastTransactionAt: {:string, "date-time"},
      model: :string,
      restartLocalTime: :string,
      serialNumber: :string
    ]
  end
end
