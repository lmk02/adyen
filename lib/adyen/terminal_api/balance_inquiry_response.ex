defmodule Adyen.TerminalAPI.BalanceInquiryResponse do
  @moduledoc """
  Provides struct and type for a BalanceInquiryResponse
  """

  @type t :: %__MODULE__{
          PaymentAccountStatus: Adyen.TerminalAPI.PaymentAccountStatus.t() | nil,
          PaymentReceipt: [Adyen.TerminalAPI.PaymentReceipt.t()] | nil,
          Response: Adyen.TerminalAPI.Response.t()
        }

  defstruct [:PaymentAccountStatus, :PaymentReceipt, :Response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      PaymentAccountStatus: {Adyen.TerminalAPI.PaymentAccountStatus, :t},
      PaymentReceipt: [{Adyen.TerminalAPI.PaymentReceipt, :t}],
      Response: {Adyen.TerminalAPI.Response, :t}
    ]
  end
end
