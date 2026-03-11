defmodule Adyen.TerminalAPI.V1.CardReaderAPDUResponse do
  @moduledoc """
  Provides struct and type for a CardReaderAPDUResponse
  """

  @type t :: %__MODULE__{
          APDUData: String.t() | nil,
          CardStatusWords: String.t(),
          Response: Adyen.TerminalAPI.V1.Response.t()
        }

  defstruct [:APDUData, :CardStatusWords, :Response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      APDUData: {:string, "byte"},
      CardStatusWords: {:string, "byte"},
      Response: {Adyen.TerminalAPI.V1.Response, :t}
    ]
  end
end
