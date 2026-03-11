defmodule Adyen.TerminalAPI.V1.RepeatedResponseMessageBody do
  @moduledoc """
  Provides struct and type for a RepeatedResponseMessageBody
  """

  @type t :: %__MODULE__{
          CardAcquisitionResponse: Adyen.TerminalAPI.V1.CardAcquisitionResponse.t() | nil,
          CardReaderAPDUResponse: Adyen.TerminalAPI.V1.CardReaderAPDUResponse.t() | nil,
          LoyaltyResponse: Adyen.TerminalAPI.V1.LoyaltyResponse.t() | nil,
          PaymentResponse: Adyen.TerminalAPI.V1.PaymentResponse.t() | nil,
          ReversalResponse: Adyen.TerminalAPI.V1.ReversalResponse.t() | nil,
          StoredValueResponse: Adyen.TerminalAPI.V1.StoredValueResponse.t() | nil
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
      CardAcquisitionResponse: {Adyen.TerminalAPI.V1.CardAcquisitionResponse, :t},
      CardReaderAPDUResponse: {Adyen.TerminalAPI.V1.CardReaderAPDUResponse, :t},
      LoyaltyResponse: {Adyen.TerminalAPI.V1.LoyaltyResponse, :t},
      PaymentResponse: {Adyen.TerminalAPI.V1.PaymentResponse, :t},
      ReversalResponse: {Adyen.TerminalAPI.V1.ReversalResponse, :t},
      StoredValueResponse: {Adyen.TerminalAPI.V1.StoredValueResponse, :t}
    ]
  end
end
