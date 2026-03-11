defmodule Adyen.TerminalAPI.V1.PaymentAccountStatus do
  @moduledoc """
  Provides struct and type for a PaymentAccountStatus
  """

  @type t :: %__MODULE__{
          Currency: String.t() | nil,
          CurrentBalance: number | nil,
          PaymentAcquirerData: Adyen.TerminalAPI.V1.PaymentAcquirerData.t() | nil,
          PaymentInstrumentData: Adyen.TerminalAPI.V1.PaymentInstrumentData.t() | nil
        }

  defstruct [:Currency, :CurrentBalance, :PaymentAcquirerData, :PaymentInstrumentData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      Currency: :string,
      CurrentBalance: :number,
      PaymentAcquirerData: {Adyen.TerminalAPI.V1.PaymentAcquirerData, :t},
      PaymentInstrumentData: {Adyen.TerminalAPI.V1.PaymentInstrumentData, :t}
    ]
  end
end
