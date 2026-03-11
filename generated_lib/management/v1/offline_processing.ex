defmodule Adyen.Management.V1.OfflineProcessing do
  @moduledoc """
  Provides struct and type for a OfflineProcessing
  """

  @type t :: %__MODULE__{
          chipFloorLimit: integer | nil,
          offlineSwipeLimits: [Adyen.Management.V1.MinorUnitsMonetaryValue.t()] | nil
        }

  defstruct [:chipFloorLimit, :offlineSwipeLimits]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      chipFloorLimit: {:integer, "int32"},
      offlineSwipeLimits: [{Adyen.Management.V1.MinorUnitsMonetaryValue, :t}]
    ]
  end
end
