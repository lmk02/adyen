defmodule Adyen.Checkout.PaymentDetailsResponse do
  @moduledoc """
  Provides struct and type for a PaymentDetailsResponse
  """

  @type t :: %__MODULE__{
          action: Adyen.Checkout.CheckoutThreeDs2Action.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.Amount.t() | nil,
          donationToken: String.t() | nil,
          fraudResult: Adyen.Checkout.FraudResult.t() | nil,
          merchantReference: String.t() | nil,
          order: Adyen.Checkout.CheckoutOrderResponse.t() | nil,
          paymentMethod: Adyen.Checkout.ResponsePaymentMethod.t() | nil,
          paymentValidations: Adyen.Checkout.PaymentValidationsResponse.t() | nil,
          pspReference: String.t() | nil,
          refusalReason: String.t() | nil,
          refusalReasonCode: String.t() | nil,
          resultCode: String.t() | nil,
          shopperLocale: String.t() | nil,
          threeDS2ResponseData: Adyen.Checkout.ThreeDs2ResponseData.t() | nil,
          threeDS2Result: Adyen.Checkout.ThreeDs2Result.t() | nil,
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
      action: {Adyen.Checkout.CheckoutThreeDs2Action, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.Amount, :t},
      donationToken: :string,
      fraudResult: {Adyen.Checkout.FraudResult, :t},
      merchantReference: :string,
      order: {Adyen.Checkout.CheckoutOrderResponse, :t},
      paymentMethod: {Adyen.Checkout.ResponsePaymentMethod, :t},
      paymentValidations: {Adyen.Checkout.PaymentValidationsResponse, :t},
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
      threeDS2ResponseData: {Adyen.Checkout.ThreeDs2ResponseData, :t},
      threeDS2Result: {Adyen.Checkout.ThreeDs2Result, :t},
      threeDSPaymentData: :string
    ]
  end
end
