defmodule Adyen.TerminalAPI.V1.PrintRequest do
  @moduledoc """
  Provides struct and type for a PrintRequest
  """

  @type t :: %__MODULE__{PrintOutput: Adyen.TerminalAPI.V1.PrintOutput.t()}

  defstruct [:PrintOutput]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [PrintOutput: {Adyen.TerminalAPI.V1.PrintOutput, :t}]
  end
end
