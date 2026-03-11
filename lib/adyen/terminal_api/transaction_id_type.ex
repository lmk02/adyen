defmodule Adyen.TerminalAPI.TransactionIDType do
  @moduledoc """
  Provides struct and type for a TransactionIDType
  """

  @type t :: %__MODULE__{TimeStamp: DateTime.t(), TransactionID: String.t()}

  defstruct [:TimeStamp, :TransactionID]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [TimeStamp: {:string, "date-time"}, TransactionID: :string]
  end
end
