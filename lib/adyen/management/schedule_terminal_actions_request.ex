defmodule Adyen.Management.ScheduleTerminalActionsRequest do
  @moduledoc """
  Provides struct and type for a ScheduleTerminalActionsRequest
  """

  @type t :: %__MODULE__{
          actionDetails:
            Adyen.Management.ForceRebootDetails.t()
            | Adyen.Management.InstallAndroidAppDetails.t()
            | Adyen.Management.InstallAndroidCertificateDetails.t()
            | Adyen.Management.ReleaseUpdateDetails.t()
            | Adyen.Management.UninstallAndroidAppDetails.t()
            | Adyen.Management.UninstallAndroidCertificateDetails.t()
            | nil,
          scheduledAt: String.t() | nil,
          storeId: String.t() | nil,
          terminalIds: [String.t()] | nil
        }

  defstruct [:actionDetails, :scheduledAt, :storeId, :terminalIds]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      actionDetails:
        {:union,
         [
           {Adyen.Management.ForceRebootDetails, :t},
           {Adyen.Management.InstallAndroidAppDetails, :t},
           {Adyen.Management.InstallAndroidCertificateDetails, :t},
           {Adyen.Management.ReleaseUpdateDetails, :t},
           {Adyen.Management.UninstallAndroidAppDetails, :t},
           {Adyen.Management.UninstallAndroidCertificateDetails, :t}
         ]},
      scheduledAt: :string,
      storeId: :string,
      terminalIds: [:string]
    ]
  end
end
