defmodule Adyen.Management.V3.InstalledAPKs do
  @moduledoc """
  Provides struct and type for a InstalledAPKs
  """

  @type t :: %__MODULE__{
          confirmationDate: DateTime.t() | nil,
          packageName: String.t() | nil,
          versionName: String.t() | nil
        }

  defstruct [:confirmationDate, :packageName, :versionName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [confirmationDate: {:string, "date-time"}, packageName: :string, versionName: :string]
  end
end
