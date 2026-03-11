defmodule Adyen.Checkout.V50.PaymentDetails do
  @moduledoc """
  Provides struct and type for a PaymentDetails
  """

  @type t :: %__MODULE__{checkoutAttemptId: String.t() | nil, type: String.t() | nil}

  defstruct [:checkoutAttemptId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      type:
        {:enum,
         [
           "alipay",
           "multibanco",
           "bankTransfer",
           "bankTransfer_IBAN",
           "paybright",
           "paynow",
           "affirm_pos",
           "iris",
           "trustly",
           "trustlyvector",
           "oney",
           "facilypay",
           "facilypay_3x",
           "facilypay_4x",
           "facilypay_6x",
           "facilypay_10x",
           "facilypay_12x",
           "unionpay",
           "kcp_banktransfer",
           "kcp_payco",
           "kcp_creditcard",
           "wechatpaySDK",
           "wechatpayQR",
           "wechatpayWeb",
           "molpay_boost",
           "wallet_IN",
           "payu_IN_cashcard",
           "payu_IN_nb",
           "paytm",
           "molpay_ebanking_VN",
           "molpay_ebanking_MY",
           "molpay_ebanking_direct_MY",
           "swish",
           "bizum",
           "walley",
           "walley_b2b",
           "alma",
           "paypo",
           "scalapay",
           "scalapay_3x",
           "scalapay_4x",
           "molpay_fpx",
           "payme",
           "payme_pos",
           "konbini",
           "directEbanking",
           "boletobancario",
           "cashticket",
           "ikano",
           "karenmillen",
           "oasis",
           "warehouse",
           "primeiropay_boleto",
           "mada",
           "benefit",
           "knet",
           "omannet",
           "gopay_wallet",
           "kcp_naverpay",
           "fawry",
           "atome",
           "naps",
           "nordea",
           "boletobancario_bradesco",
           "boletobancario_itau",
           "boletobancario_santander",
           "boletobancario_bancodobrasil",
           "boletobancario_hsbc",
           "molpay_maybank2u",
           "molpay_cimb",
           "molpay_rhb",
           "molpay_amb",
           "molpay_hlb",
           "molpay_affin_epg",
           "molpay_bankislam",
           "molpay_publicbank",
           "fpx_agrobank",
           "touchngo",
           "maybank2u_mae",
           "duitnow",
           "promptpay",
           "twint_pos",
           "alipay_hk",
           "alipay_hk_web",
           "alipay_hk_wap",
           "alipay_wap",
           "balanceplatform"
         ]}
    ]
  end
end
