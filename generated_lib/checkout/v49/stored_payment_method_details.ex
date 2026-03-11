defmodule Adyen.Checkout.V49.StoredPaymentMethodDetails do
  @moduledoc """
  Provides struct and type for a StoredPaymentMethodDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:checkoutAttemptId, :recurringDetailReference, :storedPaymentMethodId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      recurringDetailReference: :string,
      storedPaymentMethodId: :string,
      type:
        {:enum,
         [
           "alipay_plus",
           "alipay_plus_alipay_cn",
           "alipay_plus_alipay_hk",
           "alipay_plus_dana",
           "alipay_plus_gcash",
           "alipay_plus_kakaopay",
           "alipay_plus_kplus",
           "alipay_plus_naverpay",
           "alipay_plus_rabbitlinepay",
           "alipay_plus_tosspay",
           "alipay_plus_touchngo",
           "alipay_plus_truemoney",
           "bcmc_mobile",
           "bcmc_mobile_QR",
           "bcmc_mobile_app",
           "momo_wallet",
           "momo_wallet_app",
           "paymaya_wallet",
           "grabpay_SG",
           "grabpay_MY",
           "grabpay_TH",
           "grabpay_ID",
           "grabpay_VN",
           "grabpay_PH",
           "oxxo",
           "gcash",
           "dana",
           "kakaopay",
           "truemoney",
           "paysafecard"
         ]}
    ]
  end
end
