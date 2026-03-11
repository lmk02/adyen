defmodule Adyen.TerminalAPI.V1.InputRequest do
  @moduledoc """
  Provides struct and type for a InputRequest
  """

  @type t :: %__MODULE__{
          DisplayOutput: Adyen.TerminalAPI.V1.DisplayOutput.t() | nil,
          InputData: Adyen.TerminalAPI.V1.InputData.t()
        }

  defstruct [:DisplayOutput, :InputData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      DisplayOutput: {Adyen.TerminalAPI.V1.DisplayOutput, :t},
      InputData: {Adyen.TerminalAPI.V1.InputData, :t}
    ]
  end
end
