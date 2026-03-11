defmodule Adyen.TerminalAPI.InputResponse do
  @moduledoc """
  Provides struct and type for a InputResponse
  """

  @type t :: %__MODULE__{
          InputResult: Adyen.TerminalAPI.InputResult.t(),
          OutputResult: Adyen.TerminalAPI.OutputResult.t() | nil
        }

  defstruct [:InputResult, :OutputResult]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      InputResult: {Adyen.TerminalAPI.InputResult, :t},
      OutputResult: {Adyen.TerminalAPI.OutputResult, :t}
    ]
  end
end
