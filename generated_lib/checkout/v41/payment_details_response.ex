defmodule Adyen.Checkout.V41.PaymentDetailsResponse do
  @moduledoc """
  Provides struct and type for a PaymentDetailsResponse
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          authentication: map | nil,
          details: [Adyen.Checkout.V41.InputDetail.t()] | nil,
          fraudResult: Adyen.Checkout.V41.FraudResult.t() | nil,
          merchantReference: String.t() | nil,
          order: Adyen.Checkout.V41.CheckoutOrderResponse.t() | nil,
          outputDetails: map | nil,
          paymentData: String.t() | nil,
          pspReference: String.t() | nil,
          redirect: Adyen.Checkout.V41.Redirect.t() | nil,
          refusalReason: String.t() | nil,
          refusalReasonCode: String.t() | nil,
          resultCode: String.t() | nil,
          shopperLocale: String.t() | nil,
          threeDS2Result: Adyen.Checkout.V41.ThreeDs2Result.t() | nil
        }

  defstruct [
    :additionalData,
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
      additionalData: :map,
      authentication: :map,
      details: [{Adyen.Checkout.V41.InputDetail, :t}],
      fraudResult: {Adyen.Checkout.V41.FraudResult, :t},
      merchantReference: :string,
      order: {Adyen.Checkout.V41.CheckoutOrderResponse, :t},
      outputDetails: :map,
      paymentData: :string,
      pspReference: :string,
      redirect: {Adyen.Checkout.V41.Redirect, :t},
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
      threeDS2Result: {Adyen.Checkout.V41.ThreeDs2Result, :t}
    ]
  end
end
