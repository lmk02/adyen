defmodule Adyen.Management.V3.ScheduleTerminalActionsResponse do
  @moduledoc """
  Provides struct and type for a ScheduleTerminalActionsResponse
  """

  @type t :: %__MODULE__{
          actionDetails:
            Adyen.Management.V3.ForceRebootDetails.t()
            | Adyen.Management.V3.InstallAndroidAppDetails.t()
            | Adyen.Management.V3.InstallAndroidCertificateDetails.t()
            | Adyen.Management.V3.ReleaseUpdateDetails.t()
            | Adyen.Management.V3.UninstallAndroidAppDetails.t()
            | Adyen.Management.V3.UninstallAndroidCertificateDetails.t()
            | nil,
          items: [Adyen.Management.V3.TerminalActionScheduleDetail.t()] | nil,
          scheduledAt: String.t() | nil,
          storeId: String.t() | nil,
          terminalsWithErrors: map | nil,
          totalErrors: integer | nil,
          totalScheduled: integer | nil
        }

  defstruct [
    :actionDetails,
    :items,
    :scheduledAt,
    :storeId,
    :terminalsWithErrors,
    :totalErrors,
    :totalScheduled
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      actionDetails:
        {:union,
         [
           {Adyen.Management.V3.ForceRebootDetails, :t},
           {Adyen.Management.V3.InstallAndroidAppDetails, :t},
           {Adyen.Management.V3.InstallAndroidCertificateDetails, :t},
           {Adyen.Management.V3.ReleaseUpdateDetails, :t},
           {Adyen.Management.V3.UninstallAndroidAppDetails, :t},
           {Adyen.Management.V3.UninstallAndroidCertificateDetails, :t}
         ]},
      items: [{Adyen.Management.V3.TerminalActionScheduleDetail, :t}],
      scheduledAt: :string,
      storeId: :string,
      terminalsWithErrors: :map,
      totalErrors: {:integer, "int32"},
      totalScheduled: {:integer, "int32"}
    ]
  end
end
