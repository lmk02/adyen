defmodule Adyen.TerminalAPI.AdminResponse do
  @moduledoc """
  Provides struct and type for a AdminResponse
  """

  @type t :: %__MODULE__{Response: Adyen.TerminalAPI.Response.t()}

  defstruct [:Response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [Response: {Adyen.TerminalAPI.Response, :t}]
  end
end
