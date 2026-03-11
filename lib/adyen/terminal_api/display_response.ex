defmodule Adyen.TerminalAPI.DisplayResponse do
  @moduledoc """
  Provides struct and type for a DisplayResponse
  """

  @type t :: %__MODULE__{OutputResult: [Adyen.TerminalAPI.OutputResult.t()]}

  defstruct [:OutputResult]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [OutputResult: [{Adyen.TerminalAPI.OutputResult, :t}]]
  end
end
