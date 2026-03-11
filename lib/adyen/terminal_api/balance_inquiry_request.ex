defmodule Adyen.TerminalAPI.BalanceInquiryRequest do
  @moduledoc """
  Provides struct and type for a BalanceInquiryRequest
  """

  @type t :: %__MODULE__{
          LoyaltyAccountReq: Adyen.TerminalAPI.LoyaltyAccountReq.t() | nil,
          PaymentAccountReq: Adyen.TerminalAPI.PaymentAccountReq.t() | nil
        }

  defstruct [:LoyaltyAccountReq, :PaymentAccountReq]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      LoyaltyAccountReq: {Adyen.TerminalAPI.LoyaltyAccountReq, :t},
      PaymentAccountReq: {Adyen.TerminalAPI.PaymentAccountReq, :t}
    ]
  end
end
