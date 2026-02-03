defmodule Adyen.Checkout.PaymentCaptureResponse do
  @moduledoc """
  Provides struct and type for a PaymentCaptureResponse
  """

  alias Adyen.Checkout.Amount
  alias Adyen.Checkout.LineItem
  alias Adyen.Checkout.PlatformChargebackLogic
  alias Adyen.Checkout.Split
  alias Adyen.Checkout.SubMerchantInfo

  @type t :: %__MODULE__{
          amount: Amount.t(),
          lineItems: [LineItem.t()] | nil,
          merchantAccount: String.t(),
          paymentPspReference: String.t(),
          platformChargebackLogic: PlatformChargebackLogic.t() | nil,
          pspReference: String.t(),
          reference: String.t() | nil,
          splits: [Split.t()] | nil,
          status: String.t(),
          subMerchants: [SubMerchantInfo.t()] | nil
        }

  defstruct [
    :amount,
    :lineItems,
    :merchantAccount,
    :paymentPspReference,
    :platformChargebackLogic,
    :pspReference,
    :reference,
    :splits,
    :status,
    :subMerchants
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Amount, :t},
      lineItems: [{LineItem, :t}],
      merchantAccount: :string,
      paymentPspReference: :string,
      platformChargebackLogic: {PlatformChargebackLogic, :t},
      pspReference: :string,
      reference: :string,
      splits: [{Split, :t}],
      status: {:const, "received"},
      subMerchants: [{SubMerchantInfo, :t}]
    ]
  end
end
