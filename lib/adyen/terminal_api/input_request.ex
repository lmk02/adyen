defmodule Adyen.TerminalAPI.InputRequest do
  @moduledoc """
  Provides struct and type for a InputRequest
  """

  @type t :: %__MODULE__{
          DisplayOutput: Adyen.TerminalAPI.DisplayOutput.t() | nil,
          InputData: Adyen.TerminalAPI.InputData.t()
        }

  defstruct [:DisplayOutput, :InputData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      DisplayOutput: {Adyen.TerminalAPI.DisplayOutput, :t},
      InputData: {Adyen.TerminalAPI.InputData, :t}
    ]
  end
end
