defmodule Adyen.Checkout.V52.PaymentResponse do
  @moduledoc """
  Provides struct and type for a PaymentResponse
  """

  @type t :: %__MODULE__{
          action:
            Adyen.Checkout.V52.CheckoutAwaitAction.t()
            | Adyen.Checkout.V52.CheckoutBankTransferAction.t()
            | Adyen.Checkout.V52.CheckoutNativeRedirectAction.t()
            | Adyen.Checkout.V52.CheckoutQrCodeAction.t()
            | Adyen.Checkout.V52.CheckoutRedirectAction.t()
            | Adyen.Checkout.V52.CheckoutSDKAction.t()
            | Adyen.Checkout.V52.CheckoutThreeDs2ChallengeAction.t()
            | Adyen.Checkout.V52.CheckoutThreeDs2FingerPrintAction.t()
            | Adyen.Checkout.V52.CheckoutVoucherAction.t()
            | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V52.Amount.t() | nil,
          authentication: map | nil,
          details: [Adyen.Checkout.V52.InputDetail.t()] | nil,
          fraudResult: Adyen.Checkout.V52.FraudResult.t() | nil,
          merchantReference: String.t() | nil,
          order: Adyen.Checkout.V52.CheckoutOrderResponse.t() | nil,
          outputDetails: map | nil,
          paymentData: String.t() | nil,
          pspReference: String.t() | nil,
          redirect: Adyen.Checkout.V52.Redirect.t() | nil,
          refusalReason: String.t() | nil,
          refusalReasonCode: String.t() | nil,
          resultCode: String.t() | nil,
          threeDS2Result: Adyen.Checkout.V52.ThreeDs2Result.t() | nil
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
    :threeDS2Result
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      action:
        {:union,
         [
           {Adyen.Checkout.V52.CheckoutAwaitAction, :t},
           {Adyen.Checkout.V52.CheckoutBankTransferAction, :t},
           {Adyen.Checkout.V52.CheckoutNativeRedirectAction, :t},
           {Adyen.Checkout.V52.CheckoutQrCodeAction, :t},
           {Adyen.Checkout.V52.CheckoutRedirectAction, :t},
           {Adyen.Checkout.V52.CheckoutSDKAction, :t},
           {Adyen.Checkout.V52.CheckoutThreeDs2ChallengeAction, :t},
           {Adyen.Checkout.V52.CheckoutThreeDs2FingerPrintAction, :t},
           {Adyen.Checkout.V52.CheckoutVoucherAction, :t}
         ]},
      additionalData: :map,
      amount: {Adyen.Checkout.V52.Amount, :t},
      authentication: :map,
      details: [{Adyen.Checkout.V52.InputDetail, :t}],
      fraudResult: {Adyen.Checkout.V52.FraudResult, :t},
      merchantReference: :string,
      order: {Adyen.Checkout.V52.CheckoutOrderResponse, :t},
      outputDetails: :map,
      paymentData: :string,
      pspReference: :string,
      redirect: {Adyen.Checkout.V52.Redirect, :t},
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
      threeDS2Result: {Adyen.Checkout.V52.ThreeDs2Result, :t}
    ]
  end
end
