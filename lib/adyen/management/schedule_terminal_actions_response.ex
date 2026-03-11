defmodule Adyen.Management.ScheduleTerminalActionsResponse do
  @moduledoc """
  Provides struct and type for a ScheduleTerminalActionsResponse
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
          items: [Adyen.Management.TerminalActionScheduleDetail.t()] | nil,
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
           {Adyen.Management.ForceRebootDetails, :t},
           {Adyen.Management.InstallAndroidAppDetails, :t},
           {Adyen.Management.InstallAndroidCertificateDetails, :t},
           {Adyen.Management.ReleaseUpdateDetails, :t},
           {Adyen.Management.UninstallAndroidAppDetails, :t},
           {Adyen.Management.UninstallAndroidCertificateDetails, :t}
         ]},
      items: [{Adyen.Management.TerminalActionScheduleDetail, :t}],
      scheduledAt: :string,
      storeId: :string,
      terminalsWithErrors: :map,
      totalErrors: {:integer, "int32"},
      totalScheduled: {:integer, "int32"}
    ]
  end
end
