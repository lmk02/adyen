defmodule Adyen.Management.Terminal do
  @moduledoc """
  Provides struct and type for a Terminal
  """

  @type t :: %__MODULE__{
          assignment: Adyen.Management.TerminalAssignment.t() | nil,
          connectivity: Adyen.Management.TerminalConnectivity.t() | nil,
          firmwareVersion: String.t() | nil,
          id: String.t() | nil,
          installedAPKs: [Adyen.Management.InstalledAPKs.t()] | nil,
          lastActivityAt: DateTime.t() | nil,
          lastTransactionAt: DateTime.t() | nil,
          model: String.t() | nil,
          restartLocalTime: String.t() | nil,
          serialNumber: String.t() | nil
        }

  defstruct [
    :assignment,
    :connectivity,
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
      assignment: {Adyen.Management.TerminalAssignment, :t},
      connectivity: {Adyen.Management.TerminalConnectivity, :t},
      firmwareVersion: :string,
      id: :string,
      installedAPKs: [{Adyen.Management.InstalledAPKs, :t}],
      lastActivityAt: {:string, "date-time"},
      lastTransactionAt: {:string, "date-time"},
      model: :string,
      restartLocalTime: :string,
      serialNumber: :string
    ]
  end
end
