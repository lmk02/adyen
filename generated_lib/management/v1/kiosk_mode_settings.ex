defmodule Adyen.Management.V1.KioskModeSettings do
  @moduledoc """
  Provides struct and type for a KioskModeSettings
  """

  @type t :: %__MODULE__{
          allowedAppsInKioskMode: [String.t()] | nil,
          kioskAppOnStartup: String.t() | nil
        }

  defstruct [:allowedAppsInKioskMode, :kioskAppOnStartup]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [allowedAppsInKioskMode: [:string], kioskAppOnStartup: :string]
  end
end
