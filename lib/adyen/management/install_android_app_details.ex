defmodule Adyen.Management.InstallAndroidAppDetails do
  @moduledoc """
  Provides struct and type for a InstallAndroidAppDetails
  """

  @type t :: %__MODULE__{appId: String.t() | nil, type: String.t() | nil}

  defstruct [:appId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [appId: :string, type: {:const, "InstallAndroidApp"}]
  end
end
