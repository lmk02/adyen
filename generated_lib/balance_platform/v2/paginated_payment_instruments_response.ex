defmodule Adyen.BalancePlatform.V2.PaginatedPaymentInstrumentsResponse do
  @moduledoc """
  Provides struct and type for a PaginatedPaymentInstrumentsResponse
  """

  @type t :: %__MODULE__{
          hasNext: boolean,
          hasPrevious: boolean,
          paymentInstruments: [Adyen.BalancePlatform.V2.PaymentInstrument.t()]
        }

  defstruct [:hasNext, :hasPrevious, :paymentInstruments]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      hasNext: :boolean,
      hasPrevious: :boolean,
      paymentInstruments: [{Adyen.BalancePlatform.V2.PaymentInstrument, :t}]
    ]
  end
end
