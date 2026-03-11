defmodule Adyen.TerminalAPI.AbortRequest do
  @moduledoc """
  Provides struct and type for a AbortRequest
  """

  @type t :: %__MODULE__{
          AbortReason: String.t(),
          DisplayOutput: Adyen.TerminalAPI.DisplayOutput.t() | nil,
          MessageReference: Adyen.TerminalAPI.MessageReference.t()
        }

  defstruct [:AbortReason, :DisplayOutput, :MessageReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AbortReason: :string,
      DisplayOutput: {Adyen.TerminalAPI.DisplayOutput, :t},
      MessageReference: {Adyen.TerminalAPI.MessageReference, :t}
    ]
  end
end
