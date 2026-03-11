defmodule Adyen.Management.V3.HomeScreenSettings do
  @moduledoc """
  Provides struct and type for a HomeScreenSettings
  """

  @type t :: %__MODULE__{
          hideNavigationBar: boolean | nil,
          showPaymentsMenu: boolean | nil,
          showSettingsMenu: boolean | nil
        }

  defstruct [:hideNavigationBar, :showPaymentsMenu, :showSettingsMenu]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [hideNavigationBar: :boolean, showPaymentsMenu: :boolean, showSettingsMenu: :boolean]
  end
end
