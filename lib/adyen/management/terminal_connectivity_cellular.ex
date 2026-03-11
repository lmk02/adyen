defmodule Adyen.Management.TerminalConnectivityCellular do
  @moduledoc """
  Provides struct and type for a TerminalConnectivityCellular
  """

  @type t :: %__MODULE__{
          iccid: String.t() | nil,
          iccid2: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:iccid, :iccid2, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      iccid: :string,
      iccid2: :string,
      status:
        {:enum, ["activated", "deactivated", "deprecated", "inventory", "readyForActivation"]}
    ]
  end
end
