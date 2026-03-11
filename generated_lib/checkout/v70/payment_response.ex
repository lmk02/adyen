defmodule Adyen.Checkout.V70.PaymentResponse do
  @moduledoc """
  Provides struct and type for a PaymentResponse
  """

  @type t :: %__MODULE__{
          action:
            Adyen.Checkout.V70.CheckoutAwaitAction.t()
            | Adyen.Checkout.V70.CheckoutBankTransferAction.t()
            | Adyen.Checkout.V70.CheckoutDelegatedAuthenticationAction.t()
            | Adyen.Checkout.V70.CheckoutNativeRedirectAction.t()
            | Adyen.Checkout.V70.CheckoutQrCodeAction.t()
            | Adyen.Checkout.V70.CheckoutRedirectAction.t()
            | Adyen.Checkout.V70.CheckoutSDKAction.t()
            | Adyen.Checkout.V70.CheckoutThreeDs2Action.t()
            | Adyen.Checkout.V70.CheckoutVoucherAction.t()
            | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V70.Amount.t() | nil,
          donationToken: String.t() | nil,
          fraudResult: Adyen.Checkout.V70.FraudResult.t() | nil,
          merchantReference: String.t() | nil,
          order: Adyen.Checkout.V70.CheckoutOrderResponse.t() | nil,
          paymentMethod: Adyen.Checkout.V70.ResponsePaymentMethod.t() | nil,
          paymentValidations: Adyen.Checkout.V70.PaymentValidationsResponse.t() | nil,
          pspReference: String.t() | nil,
          refusalReason: String.t() | nil,
          refusalReasonCode: String.t() | nil,
          resultCode: String.t() | nil,
          threeDS2ResponseData: Adyen.Checkout.V70.ThreeDs2ResponseData.t() | nil,
          threeDS2Result: Adyen.Checkout.V70.ThreeDs2Result.t() | nil,
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
           {Adyen.Checkout.V70.CheckoutAwaitAction, :t},
           {Adyen.Checkout.V70.CheckoutBankTransferAction, :t},
           {Adyen.Checkout.V70.CheckoutDelegatedAuthenticationAction, :t},
           {Adyen.Checkout.V70.CheckoutNativeRedirectAction, :t},
           {Adyen.Checkout.V70.CheckoutQrCodeAction, :t},
           {Adyen.Checkout.V70.CheckoutRedirectAction, :t},
           {Adyen.Checkout.V70.CheckoutSDKAction, :t},
           {Adyen.Checkout.V70.CheckoutThreeDs2Action, :t},
           {Adyen.Checkout.V70.CheckoutVoucherAction, :t}
         ]},
      additionalData: :map,
      amount: {Adyen.Checkout.V70.Amount, :t},
      donationToken: :string,
      fraudResult: {Adyen.Checkout.V70.FraudResult, :t},
      merchantReference: :string,
      order: {Adyen.Checkout.V70.CheckoutOrderResponse, :t},
      paymentMethod: {Adyen.Checkout.V70.ResponsePaymentMethod, :t},
      paymentValidations: {Adyen.Checkout.V70.PaymentValidationsResponse, :t},
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
      threeDS2ResponseData: {Adyen.Checkout.V70.ThreeDs2ResponseData, :t},
      threeDS2Result: {Adyen.Checkout.V70.ThreeDs2Result, :t},
      threeDSPaymentData: :string
    ]
  end
end
