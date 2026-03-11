defmodule Adyen.TerminalAPI.LogoutRequest do
  @moduledoc """
  Provides struct and type for a LogoutRequest
  """

  @type t :: %__MODULE__{MaintenanceAllowed: boolean | nil}

  defstruct [:MaintenanceAllowed]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [MaintenanceAllowed: :boolean]
  end
end
