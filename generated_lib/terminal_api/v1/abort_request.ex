defmodule Adyen.TerminalAPI.V1.AbortRequest do
  @moduledoc """
  Provides struct and type for a AbortRequest
  """

  @type t :: %__MODULE__{
          AbortReason: String.t(),
          DisplayOutput: Adyen.TerminalAPI.V1.DisplayOutput.t() | nil,
          MessageReference: Adyen.TerminalAPI.V1.MessageReference.t()
        }

  defstruct [:AbortReason, :DisplayOutput, :MessageReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AbortReason: :string,
      DisplayOutput: {Adyen.TerminalAPI.V1.DisplayOutput, :t},
      MessageReference: {Adyen.TerminalAPI.V1.MessageReference, :t}
    ]
  end
end
