defmodule Adyen.TerminalAPI.V1.DisplayRequest do
  @moduledoc """
  Provides struct and type for a DisplayRequest
  """

  @type t :: %__MODULE__{DisplayOutput: [Adyen.TerminalAPI.V1.DisplayOutput.t()]}

  defstruct [:DisplayOutput]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [DisplayOutput: [{Adyen.TerminalAPI.V1.DisplayOutput, :t}]]
  end
end
