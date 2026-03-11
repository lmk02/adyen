defmodule Adyen.TerminalAPI.V1.TransactionStatusResponse do
  @moduledoc """
  Provides struct and type for a TransactionStatusResponse
  """

  @type t :: %__MODULE__{
          MessageReference: Adyen.TerminalAPI.V1.MessageReference.t() | nil,
          RepeatedMessageResponse: Adyen.TerminalAPI.V1.RepeatedMessageResponse.t() | nil,
          Response: Adyen.TerminalAPI.V1.Response.t()
        }

  defstruct [:MessageReference, :RepeatedMessageResponse, :Response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      MessageReference: {Adyen.TerminalAPI.V1.MessageReference, :t},
      RepeatedMessageResponse: {Adyen.TerminalAPI.V1.RepeatedMessageResponse, :t},
      Response: {Adyen.TerminalAPI.V1.Response, :t}
    ]
  end
end
