defmodule Adyen.Management.WifiProfiles do
  @moduledoc """
  Provides struct and type for a WifiProfiles
  """

  @type t :: %__MODULE__{
          profiles: [Adyen.Management.Profile.t()] | nil,
          settings: Adyen.Management.Settings.t() | nil
        }

  defstruct [:profiles, :settings]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [profiles: [{Adyen.Management.Profile, :t}], settings: {Adyen.Management.Settings, :t}]
  end
end
