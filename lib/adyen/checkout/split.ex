defmodule Adyen.Checkout.Split do
  @moduledoc """
  Provides struct and type for a Split
  """

  alias Adyen.Checkout.SplitAmount

  @type t :: %__MODULE__{
          account: String.t() | nil,
          amount: SplitAmount.t() | nil,
          description: String.t() | nil,
          reference: String.t() | nil,
          type: String.t()
        }

  defstruct [:account, :amount, :description, :reference, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      account: :string,
      amount: {SplitAmount, :t},
      description: :string,
      reference: :string,
      type:
        {:enum,
         [
           "AcquiringFees",
           "AdyenCommission",
           "AdyenFees",
           "AdyenMarkup",
           "BalanceAccount",
           "Commission",
           "Default",
           "Interchange",
           "MarketPlace",
           "PaymentFee",
           "Remainder",
           "SchemeFee",
           "Surcharge",
           "Tip",
           "TopUp",
           "VAT"
         ]}
    ]
  end
end
