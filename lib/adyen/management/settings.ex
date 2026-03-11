defmodule Adyen.Management.Settings do
  @moduledoc """
  Provides struct and type for a Settings
  """

  @type t :: %__MODULE__{band: String.t() | nil, roaming: boolean | nil, timeout: integer | nil}

  defstruct [:band, :roaming, :timeout]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [band: :string, roaming: :boolean, timeout: {:integer, "int32"}]
  end
end
