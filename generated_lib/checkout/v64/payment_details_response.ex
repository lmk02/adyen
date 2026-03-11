defmodule Adyen.Checkout.V64.PaymentDetailsResponse do
  @moduledoc """
  Provides struct and type for a PaymentDetailsResponse
  """

  @type t :: %__MODULE__{
          action: Adyen.Checkout.V64.CheckoutRedirectAction.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V64.Amount.t() | nil,
          authentication: map | nil,
          details: [Adyen.Checkout.V64.InputDetail.t()] | nil,
          fraudResult: Adyen.Checkout.V64.FraudResult.t() | nil,
          merchantReference: String.t() | nil,
          order: Adyen.Checkout.V64.CheckoutOrderResponse.t() | nil,
          outputDetails: map | nil,
          paymentData: String.t() | nil,
          pspReference: String.t() | nil,
          redirect: Adyen.Checkout.V64.Redirect.t() | nil,
          refusalReason: String.t() | nil,
          refusalReasonCode: String.t() | nil,
          resultCode: String.t() | nil,
          shopperLocale: String.t() | nil,
          threeDS2Result: Adyen.Checkout.V64.ThreeDs2Result.t() | nil
        }

  defstruct [
    :action,
    :additionalData,
    :amount,
    :authentication,
    :details,
    :fraudResult,
    :merchantReference,
    :order,
    :outputDetails,
    :paymentData,
    :pspReference,
    :redirect,
    :refusalReason,
    :refusalReasonCode,
    :resultCode,
    :shopperLocale,
    :threeDS2Result
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      action: {Adyen.Checkout.V64.CheckoutRedirectAction, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.V64.Amount, :t},
      authentication: :map,
      details: [{Adyen.Checkout.V64.InputDetail, :t}],
      fraudResult: {Adyen.Checkout.V64.FraudResult, :t},
      merchantReference: :string,
      order: {Adyen.Checkout.V64.CheckoutOrderResponse, :t},
      outputDetails: :map,
      paymentData: :string,
      pspReference: :string,
      redirect: {Adyen.Checkout.V64.Redirect, :t},
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
      threeDS2Result: {Adyen.Checkout.V64.ThreeDs2Result, :t}
    ]
  end
end
