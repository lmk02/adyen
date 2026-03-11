defmodule Adyen.TerminalAPI.V1.InputResponse do
  @moduledoc """
  Provides struct and type for a InputResponse
  """

  @type t :: %__MODULE__{
          InputResult: Adyen.TerminalAPI.V1.InputResult.t(),
          OutputResult: Adyen.TerminalAPI.V1.OutputResult.t() | nil
        }

  defstruct [:InputResult, :OutputResult]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      InputResult: {Adyen.TerminalAPI.V1.InputResult, :t},
      OutputResult: {Adyen.TerminalAPI.V1.OutputResult, :t}
    ]
  end
end
