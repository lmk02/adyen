defmodule Adyen.TerminalAPI.CardReaderAPDURequest do
  @moduledoc """
  Provides struct and type for a CardReaderAPDURequest
  """

  @type t :: %__MODULE__{
          APDUClass: String.t(),
          APDUData: String.t() | nil,
          APDUExpectedLength: String.t() | nil,
          APDUInstruction: String.t(),
          APDUPar1: String.t(),
          APDUPar2: String.t()
        }

  defstruct [:APDUClass, :APDUData, :APDUExpectedLength, :APDUInstruction, :APDUPar1, :APDUPar2]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      APDUClass: {:string, "byte"},
      APDUData: {:string, "byte"},
      APDUExpectedLength: {:string, "byte"},
      APDUInstruction: {:string, "byte"},
      APDUPar1: {:string, "byte"},
      APDUPar2: {:string, "byte"}
    ]
  end
end
