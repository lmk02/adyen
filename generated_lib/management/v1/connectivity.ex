defmodule Adyen.Management.V1.Connectivity do
  @moduledoc """
  Provides struct and type for a Connectivity
  """

  @type t :: %__MODULE__{
          simcardStatus: String.t() | nil,
          terminalIPAddressURL: Adyen.Management.V1.EventUrl.t() | nil
        }

  defstruct [:simcardStatus, :terminalIPAddressURL]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      simcardStatus: {:enum, ["ACTIVATED", "INVENTORY"]},
      terminalIPAddressURL: {Adyen.Management.V1.EventUrl, :t}
    ]
  end
end
