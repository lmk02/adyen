defmodule Adyen.TerminalAPI.RepeatedResponseMessageBody do
  @moduledoc """
  Provides struct and type for a RepeatedResponseMessageBody
  """

  @type t :: %__MODULE__{
          CardAcquisitionResponse: Adyen.TerminalAPI.CardAcquisitionResponse.t() | nil,
          CardReaderAPDUResponse: Adyen.TerminalAPI.CardReaderAPDUResponse.t() | nil,
          LoyaltyResponse: Adyen.TerminalAPI.LoyaltyResponse.t() | nil,
          PaymentResponse: Adyen.TerminalAPI.PaymentResponse.t() | nil,
          ReversalResponse: Adyen.TerminalAPI.ReversalResponse.t() | nil,
          StoredValueResponse: Adyen.TerminalAPI.StoredValueResponse.t() | nil
        }

  defstruct [
    :CardAcquisitionResponse,
    :CardReaderAPDUResponse,
    :LoyaltyResponse,
    :PaymentResponse,
    :ReversalResponse,
    :StoredValueResponse
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CardAcquisitionResponse: {Adyen.TerminalAPI.CardAcquisitionResponse, :t},
      CardReaderAPDUResponse: {Adyen.TerminalAPI.CardReaderAPDUResponse, :t},
      LoyaltyResponse: {Adyen.TerminalAPI.LoyaltyResponse, :t},
      PaymentResponse: {Adyen.TerminalAPI.PaymentResponse, :t},
      ReversalResponse: {Adyen.TerminalAPI.ReversalResponse, :t},
      StoredValueResponse: {Adyen.TerminalAPI.StoredValueResponse, :t}
    ]
  end
end
