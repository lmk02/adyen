defmodule Adyen.Checkout.PaymentDetailsResponse do
  @moduledoc """
  Provides struct and type for a PaymentDetailsResponse
  """

  alias Adyen.Checkout.Amount
  alias Adyen.Checkout.CheckoutOrderResponse
  alias Adyen.Checkout.CheckoutThreeDs2Action
  alias Adyen.Checkout.FraudResult
  alias Adyen.Checkout.PaymentValidationsResponse
  alias Adyen.Checkout.ResponsePaymentMethod
  alias Adyen.Checkout.ThreeDs2ResponseData
  alias Adyen.Checkout.ThreeDs2Result

  @type t :: %__MODULE__{
          action: CheckoutThreeDs2Action.t() | nil,
          additionalData: map | nil,
          amount: Amount.t() | nil,
          donationToken: String.t() | nil,
          fraudResult: FraudResult.t() | nil,
          merchantReference: String.t() | nil,
          order: CheckoutOrderResponse.t() | nil,
          paymentMethod: ResponsePaymentMethod.t() | nil,
          paymentValidations: PaymentValidationsResponse.t() | nil,
          pspReference: String.t() | nil,
          refusalReason: String.t() | nil,
          refusalReasonCode: String.t() | nil,
          resultCode: String.t() | nil,
          shopperLocale: String.t() | nil,
          threeDS2ResponseData: ThreeDs2ResponseData.t() | nil,
          threeDS2Result: ThreeDs2Result.t() | nil,
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
      action: {CheckoutThreeDs2Action, :t},
      additionalData: :map,
      amount: {Amount, :t},
      donationToken: :string,
      fraudResult: {FraudResult, :t},
      merchantReference: :string,
      order: {CheckoutOrderResponse, :t},
      paymentMethod: {ResponsePaymentMethod, :t},
      paymentValidations: {PaymentValidationsResponse, :t},
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
      threeDS2ResponseData: {ThreeDs2ResponseData, :t},
      threeDS2Result: {ThreeDs2Result, :t},
      threeDSPaymentData: :string
    ]
  end
end
