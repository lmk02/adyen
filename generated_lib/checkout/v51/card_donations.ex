defmodule Adyen.Checkout.V51.CardDonations do
  @moduledoc """
  Provides struct and type for a CardDonations
  """

  @type t :: %__MODULE__{
          billingSequenceNumber: String.t() | nil,
          brand: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          "cupsecureplus.smscode": String.t() | nil,
          cvc: String.t() | nil,
          encryptedCard: String.t() | nil,
          encryptedCardNumber: String.t() | nil,
          encryptedExpiryMonth: String.t() | nil,
          encryptedExpiryYear: String.t() | nil,
          encryptedPassword: String.t() | nil,
          encryptedSecurityCode: String.t() | nil,
          expiryMonth: String.t() | nil,
          expiryYear: String.t() | nil,
          fastlaneData: String.t() | nil,
          fundingSource: String.t() | nil,
          holderName: String.t() | nil,
          networkPaymentReference: String.t() | nil,
          number: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          shopperNotificationReference: String.t() | nil,
          srcCorrelationId: String.t() | nil,
          srcDigitalCardId: String.t() | nil,
          srcScheme: String.t() | nil,
          srcTokenReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          threeDS2SdkVersion: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :billingSequenceNumber,
    :brand,
    :checkoutAttemptId,
    :"cupsecureplus.smscode",
    :cvc,
    :encryptedCard,
    :encryptedCardNumber,
    :encryptedExpiryMonth,
    :encryptedExpiryYear,
    :encryptedPassword,
    :encryptedSecurityCode,
    :expiryMonth,
    :expiryYear,
    :fastlaneData,
    :fundingSource,
    :holderName,
    :networkPaymentReference,
    :number,
    :recurringDetailReference,
    :shopperNotificationReference,
    :srcCorrelationId,
    :srcDigitalCardId,
    :srcScheme,
    :srcTokenReference,
    :storedPaymentMethodId,
    :threeDS2SdkVersion,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      billingSequenceNumber: :string,
      brand: :string,
      checkoutAttemptId: :string,
      "cupsecureplus.smscode": :string,
      cvc: :string,
      encryptedCard: :string,
      encryptedCardNumber: :string,
      encryptedExpiryMonth: :string,
      encryptedExpiryYear: :string,
      encryptedPassword: :string,
      encryptedSecurityCode: :string,
      expiryMonth: :string,
      expiryYear: :string,
      fastlaneData: :string,
      fundingSource: {:enum, ["credit", "debit", "prepaid"]},
      holderName: :string,
      networkPaymentReference: :string,
      number: :string,
      recurringDetailReference: :string,
      shopperNotificationReference: :string,
      srcCorrelationId: :string,
      srcDigitalCardId: :string,
      srcScheme: :string,
      srcTokenReference: :string,
      storedPaymentMethodId: :string,
      threeDS2SdkVersion: :string,
      type: {:enum, ["bcmc", "scheme", "networkToken", "giftcard", "card", "clicktopay"]}
    ]
  end
end
