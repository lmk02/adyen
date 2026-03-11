defmodule Adyen.Management.V1.TerminalInstructions do
  @moduledoc """
  Provides struct and type for a TerminalInstructions
  """

  @type t :: %__MODULE__{adyenAppRestart: boolean | nil}

  defstruct [:adyenAppRestart]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [adyenAppRestart: :boolean]
  end
end
