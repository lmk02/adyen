defmodule Adyen.Transfers.PlatformPayment do
  @moduledoc """
  Provides struct and type for a PlatformPayment
  """

  @type t :: %__MODULE__{
          modificationMerchantReference: String.t() | nil,
          modificationPspReference: String.t() | nil,
          paymentMerchantReference: String.t() | nil,
          platformPaymentType: String.t() | nil,
          pspPaymentReference: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :modificationMerchantReference,
    :modificationPspReference,
    :paymentMerchantReference,
    :platformPaymentType,
    :pspPaymentReference,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      modificationMerchantReference: :string,
      modificationPspReference: :string,
      paymentMerchantReference: :string,
      platformPaymentType:
        {:enum,
         [
           "AcquiringFees",
           "AdyenCommission",
           "AdyenFees",
           "AdyenMarkup",
           "BalanceAccount",
           "ChargebackRemainder",
           "Commission",
           "DCCMarkup",
           "DCCPlatformCommission",
           "Default",
           "Interchange",
           "PaymentFee",
           "Remainder",
           "SchemeFee",
           "Surcharge",
           "Tip",
           "TopUp",
           "VAT"
         ]},
      pspPaymentReference: :string,
      type: {:const, "platformPayment"}
    ]
  end
end
