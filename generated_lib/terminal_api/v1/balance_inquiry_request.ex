defmodule Adyen.TerminalAPI.V1.BalanceInquiryRequest do
  @moduledoc """
  Provides struct and type for a BalanceInquiryRequest
  """

  @type t :: %__MODULE__{
          LoyaltyAccountReq: Adyen.TerminalAPI.V1.LoyaltyAccountReq.t() | nil,
          PaymentAccountReq: Adyen.TerminalAPI.V1.PaymentAccountReq.t() | nil
        }

  defstruct [:LoyaltyAccountReq, :PaymentAccountReq]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      LoyaltyAccountReq: {Adyen.TerminalAPI.V1.LoyaltyAccountReq, :t},
      PaymentAccountReq: {Adyen.TerminalAPI.V1.PaymentAccountReq, :t}
    ]
  end
end
