defmodule Adyen.TerminalAPI.RepeatedMessageResponse do
  @moduledoc """
  Provides struct and type for a RepeatedMessageResponse
  """

  @type t :: %__MODULE__{
          MessageHeader: Adyen.TerminalAPI.MessageHeader.t(),
          RepeatedResponseMessageBody: Adyen.TerminalAPI.RepeatedResponseMessageBody.t()
        }

  defstruct [:MessageHeader, :RepeatedResponseMessageBody]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      MessageHeader: {Adyen.TerminalAPI.MessageHeader, :t},
      RepeatedResponseMessageBody: {Adyen.TerminalAPI.RepeatedResponseMessageBody, :t}
    ]
  end
end
