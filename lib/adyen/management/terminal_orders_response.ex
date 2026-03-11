defmodule Adyen.Management.TerminalOrdersResponse do
  @moduledoc """
  Provides struct and type for a TerminalOrdersResponse
  """

  @type t :: %__MODULE__{data: [Adyen.Management.TerminalOrder.t()] | nil}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{Adyen.Management.TerminalOrder, :t}]]
  end
end
