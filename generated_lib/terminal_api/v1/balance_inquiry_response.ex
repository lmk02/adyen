defmodule Adyen.TerminalAPI.V1.BalanceInquiryResponse do
  @moduledoc """
  Provides struct and type for a BalanceInquiryResponse
  """

  @type t :: %__MODULE__{
          PaymentAccountStatus: Adyen.TerminalAPI.V1.PaymentAccountStatus.t() | nil,
          PaymentReceipt: [Adyen.TerminalAPI.V1.PaymentReceipt.t()] | nil,
          Response: Adyen.TerminalAPI.V1.Response.t()
        }

  defstruct [:PaymentAccountStatus, :PaymentReceipt, :Response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      PaymentAccountStatus: {Adyen.TerminalAPI.V1.PaymentAccountStatus, :t},
      PaymentReceipt: [{Adyen.TerminalAPI.V1.PaymentReceipt, :t}],
      Response: {Adyen.TerminalAPI.V1.Response, :t}
    ]
  end
end
