defmodule Adyen.Checkout.V69.PaymentResponse do
  @moduledoc """
  Provides struct and type for a PaymentResponse
  """

  @type t :: %__MODULE__{
          action:
            Adyen.Checkout.V69.CheckoutAwaitAction.t()
            | Adyen.Checkout.V69.CheckoutBankTransferAction.t()
            | Adyen.Checkout.V69.CheckoutDelegatedAuthenticationAction.t()
            | Adyen.Checkout.V69.CheckoutNativeRedirectAction.t()
            | Adyen.Checkout.V69.CheckoutQrCodeAction.t()
            | Adyen.Checkout.V69.CheckoutRedirectAction.t()
            | Adyen.Checkout.V69.CheckoutSDKAction.t()
            | Adyen.Checkout.V69.CheckoutThreeDs2Action.t()
            | Adyen.Checkout.V69.CheckoutVoucherAction.t()
            | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V69.Amount.t() | nil,
          donationToken: String.t() | nil,
          fraudResult: Adyen.Checkout.V69.FraudResult.t() | nil,
          merchantReference: String.t() | nil,
          order: Adyen.Checkout.V69.CheckoutOrderResponse.t() | nil,
          paymentMethod: Adyen.Checkout.V69.ResponsePaymentMethod.t() | nil,
          paymentValidations: Adyen.Checkout.V69.PaymentValidationsResponse.t() | nil,
          pspReference: String.t() | nil,
          refusalReason: String.t() | nil,
          refusalReasonCode: String.t() | nil,
          resultCode: String.t() | nil,
          threeDS2ResponseData: Adyen.Checkout.V69.ThreeDs2ResponseData.t() | nil,
          threeDS2Result: Adyen.Checkout.V69.ThreeDs2Result.t() | nil,
          threeDSPaymentData: String.t() | nil
        }

  defstruct [
    :action,
    :additionalData,
    :amount,
    :donationToken,
    :fraudResult,
    :merchantReference,
    :order,
    :paymentMethod,
    :paymentValidations,
    :pspReference,
    :refusalReason,
    :refusalReasonCode,
    :resultCode,
    :threeDS2ResponseData,
    :threeDS2Result,
    :threeDSPaymentData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      action:
        {:union,
         [
           {Adyen.Checkout.V69.CheckoutAwaitAction, :t},
           {Adyen.Checkout.V69.CheckoutBankTransferAction, :t},
           {Adyen.Checkout.V69.CheckoutDelegatedAuthenticationAction, :t},
           {Adyen.Checkout.V69.CheckoutNativeRedirectAction, :t},
           {Adyen.Checkout.V69.CheckoutQrCodeAction, :t},
           {Adyen.Checkout.V69.CheckoutRedirectAction, :t},
           {Adyen.Checkout.V69.CheckoutSDKAction, :t},
           {Adyen.Checkout.V69.CheckoutThreeDs2Action, :t},
           {Adyen.Checkout.V69.CheckoutVoucherAction, :t}
         ]},
      additionalData: :map,
      amount: {Adyen.Checkout.V69.Amount, :t},
      donationToken: :string,
      fraudResult: {Adyen.Checkout.V69.FraudResult, :t},
      merchantReference: :string,
      order: {Adyen.Checkout.V69.CheckoutOrderResponse, :t},
      paymentMethod: {Adyen.Checkout.V69.ResponsePaymentMethod, :t},
      paymentValidations: {Adyen.Checkout.V69.PaymentValidationsResponse, :t},
      pspReference: :string,
      refusalReason: :string,
      refusalReasonCode: :string,
      resultCode:
        {:enum,
         [
           "AuthenticationFinished",
           "AuthenticationNotRequired",
           "Authorised",
           "Cancelled",
           "ChallengeShopper",
           "Error",
           "IdentifyShopper",
           "PartiallyAuthorised",
           "Pending",
           "PresentToShopper",
           "Received",
           "RedirectShopper",
           "Refused",
           "Success"
         ]},
      threeDS2ResponseData: {Adyen.Checkout.V69.ThreeDs2ResponseData, :t},
      threeDS2Result: {Adyen.Checkout.V69.ThreeDs2Result, :t},
      threeDSPaymentData: :string
    ]
  end
end
