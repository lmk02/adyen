defmodule Adyen.Management.V1.ReleaseUpdateDetails do
  @moduledoc """
  Provides struct and type for a ReleaseUpdateDetails
  """

  @type t :: %__MODULE__{type: String.t() | nil, updateAtFirstMaintenanceCall: boolean | nil}

  defstruct [:type, :updateAtFirstMaintenanceCall]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [type: {:const, "ReleaseUpdate"}, updateAtFirstMaintenanceCall: :boolean]
  end
end
