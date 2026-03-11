defmodule Adyen.Management.V1.ExternalTerminalAction do
  @moduledoc """
  Provides struct and type for a ExternalTerminalAction
  """

  @type t :: %__MODULE__{
          actionType: String.t() | nil,
          config: String.t() | nil,
          confirmedAt: DateTime.t() | nil,
          id: String.t() | nil,
          result: String.t() | nil,
          scheduledAt: DateTime.t() | nil,
          status: String.t() | nil,
          terminalId: String.t() | nil
        }

  defstruct [:actionType, :config, :confirmedAt, :id, :result, :scheduledAt, :status, :terminalId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      actionType: :string,
      config: :string,
      confirmedAt: {:string, "date-time"},
      id: :string,
      result: :string,
      scheduledAt: {:string, "date-time"},
      status: :string,
      terminalId: :string
    ]
  end
end
