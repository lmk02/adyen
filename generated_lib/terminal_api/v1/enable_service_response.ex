defmodule Adyen.TerminalAPI.V1.EnableServiceResponse do
  @moduledoc """
  Provides struct and type for a EnableServiceResponse
  """

  @type t :: %__MODULE__{Response: Adyen.TerminalAPI.V1.Response.t()}

  defstruct [:Response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [Response: {Adyen.TerminalAPI.V1.Response, :t}]
  end
end
