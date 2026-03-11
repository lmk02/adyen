defmodule Adyen.TerminalAPI.V1.DisplayResponse do
  @moduledoc """
  Provides struct and type for a DisplayResponse
  """

  @type t :: %__MODULE__{OutputResult: [Adyen.TerminalAPI.V1.OutputResult.t()]}

  defstruct [:OutputResult]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [OutputResult: [{Adyen.TerminalAPI.V1.OutputResult, :t}]]
  end
end
