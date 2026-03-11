defmodule Adyen.TerminalAPI.TransactionStatusResponse do
  @moduledoc """
  Provides struct and type for a TransactionStatusResponse
  """

  @type t :: %__MODULE__{
          MessageReference: Adyen.TerminalAPI.MessageReference.t() | nil,
          RepeatedMessageResponse: Adyen.TerminalAPI.RepeatedMessageResponse.t() | nil,
          Response: Adyen.TerminalAPI.Response.t()
        }

  defstruct [:MessageReference, :RepeatedMessageResponse, :Response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      MessageReference: {Adyen.TerminalAPI.MessageReference, :t},
      RepeatedMessageResponse: {Adyen.TerminalAPI.RepeatedMessageResponse, :t},
      Response: {Adyen.TerminalAPI.Response, :t}
    ]
  end
end
