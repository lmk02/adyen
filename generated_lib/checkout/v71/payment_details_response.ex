defmodule Adyen.Checkout.V71.PaymentDetailsResponse do
  @moduledoc """
  Provides struct and type for a PaymentDetailsResponse
  """

  @type t :: %__MODULE__{
          action: Adyen.Checkout.V71.CheckoutThreeDs2Action.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V71.Amount.t() | nil,
          donationToken: String.t() | nil,
          fraudResult: Adyen.Checkout.V71.FraudResult.t() | nil,
          merchantReference: String.t() | nil,
          order: Adyen.Checkout.V71.CheckoutOrderResponse.t() | nil,
          paymentMethod: Adyen.Checkout.V71.ResponsePaymentMethod.t() | nil,
          paymentValidations: Adyen.Checkout.V71.PaymentValidationsResponse.t() | nil,
          pspReference: String.t() | nil,
          refusalReason: String.t() | nil,
          refusalReasonCode: String.t() | nil,
          resultCode: String.t() | nil,
          shopperLocale: String.t() | nil,
          threeDS2ResponseData: Adyen.Checkout.V71.ThreeDs2ResponseData.t() | nil,
          threeDS2Result: Adyen.Checkout.V71.ThreeDs2Result.t() | nil,
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
    :shopperLocale,
    :threeDS2ResponseData,
    :threeDS2Result,
    :threeDSPaymentData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      action: {Adyen.Checkout.V71.CheckoutThreeDs2Action, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.V71.Amount, :t},
      donationToken: :string,
      fraudResult: {Adyen.Checkout.V71.FraudResult, :t},
      merchantReference: :string,
      order: {Adyen.Checkout.V71.CheckoutOrderResponse, :t},
      paymentMethod: {Adyen.Checkout.V71.ResponsePaymentMethod, :t},
      paymentValidations: {Adyen.Checkout.V71.PaymentValidationsResponse, :t},
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
      shopperLocale: :string,
      threeDS2ResponseData: {Adyen.Checkout.V71.ThreeDs2ResponseData, :t},
      threeDS2Result: {Adyen.Checkout.V71.ThreeDs2Result, :t},
      threeDSPaymentData: :string
    ]
  end
end
