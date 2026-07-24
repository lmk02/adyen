defmodule Adyen.Management.V1.OfflineProcessing do
  @moduledoc """
  Provides struct and type for a OfflineProcessing
  """

  @type t :: %__MODULE__{chipFloorLimit: integer | nil}

  defstruct [:chipFloorLimit]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [chipFloorLimit: {:integer, "int32"}]
  end
end
