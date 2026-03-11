defmodule Adyen.Checkout.V37.PaymentResponse do
  @moduledoc """
  Provides struct and type for a PaymentResponse
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          details: [Adyen.Checkout.V37.InputDetail.t()] | nil,
          fraudResult: Adyen.Checkout.V37.FraudResult.t() | nil,
          order: Adyen.Checkout.V37.CheckoutOrderResponse.t() | nil,
          outputDetails: map | nil,
          paymentData: String.t() | nil,
          pspReference: String.t() | nil,
          redirect: Adyen.Checkout.V37.Redirect.t() | nil,
          refusalReason: String.t() | nil,
          refusalReasonCode: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [
    :additionalData,
    :details,
    :fraudResult,
    :order,
    :outputDetails,
    :paymentData,
    :pspReference,
    :redirect,
    :refusalReason,
    :refusalReasonCode,
    :resultCode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      details: [{Adyen.Checkout.V37.InputDetail, :t}],
      fraudResult: {Adyen.Checkout.V37.FraudResult, :t},
      order: {Adyen.Checkout.V37.CheckoutOrderResponse, :t},
      outputDetails: :map,
      paymentData: :string,
      pspReference: :string,
      redirect: {Adyen.Checkout.V37.Redirect, :t},
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
         ]}
    ]
  end
end
