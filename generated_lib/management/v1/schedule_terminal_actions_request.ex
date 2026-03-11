defmodule Adyen.Management.V1.ScheduleTerminalActionsRequest do
  @moduledoc """
  Provides struct and type for a ScheduleTerminalActionsRequest
  """

  @type t :: %__MODULE__{
          actionDetails:
            Adyen.Management.V1.ForceRebootDetails.t()
            | Adyen.Management.V1.InstallAndroidAppDetails.t()
            | Adyen.Management.V1.InstallAndroidCertificateDetails.t()
            | Adyen.Management.V1.ReleaseUpdateDetails.t()
            | Adyen.Management.V1.UninstallAndroidAppDetails.t()
            | Adyen.Management.V1.UninstallAndroidCertificateDetails.t()
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
           {Adyen.Management.V1.ForceRebootDetails, :t},
           {Adyen.Management.V1.InstallAndroidAppDetails, :t},
           {Adyen.Management.V1.InstallAndroidCertificateDetails, :t},
           {Adyen.Management.V1.ReleaseUpdateDetails, :t},
           {Adyen.Management.V1.UninstallAndroidAppDetails, :t},
           {Adyen.Management.V1.UninstallAndroidCertificateDetails, :t}
         ]},
      scheduledAt: :string,
      storeId: :string,
      terminalIds: [:string]
    ]
  end
end
