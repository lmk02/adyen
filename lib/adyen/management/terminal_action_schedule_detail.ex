defmodule Adyen.Management.TerminalActionScheduleDetail do
  @moduledoc """
  Provides struct and type for a TerminalActionScheduleDetail
  """

  @type t :: %__MODULE__{id: String.t() | nil, terminalId: String.t() | nil}

  defstruct [:id, :terminalId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :string, terminalId: :string]
  end
end
