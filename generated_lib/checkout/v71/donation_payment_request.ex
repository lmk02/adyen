defmodule Adyen.Checkout.V71.DonationPaymentRequest do
  @moduledoc """
  Provides struct and type for a DonationPaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: Adyen.Checkout.V71.AccountInfo.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V71.Amount.t(),
          applicationInfo: Adyen.Checkout.V71.ApplicationInfo.t() | nil,
          authenticationData: Adyen.Checkout.V71.AuthenticationData.t() | nil,
          billingAddress: Adyen.Checkout.V71.BillingAddress.t() | nil,
          browserInfo: Adyen.Checkout.V71.BrowserInfo.t() | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          deliverAt: DateTime.t() | nil,
          deliveryAddress: Adyen.Checkout.V71.DeliveryAddress.t() | nil,
          deviceFingerprint: String.t() | nil,
          donationAccount: String.t() | nil,
          donationCampaignId: String.t() | nil,
          donationOriginalPspReference: String.t() | nil,
          donationToken: String.t() | nil,
          lineItems: [Adyen.Checkout.V71.LineItem.t()] | nil,
          merchantAccount: String.t(),
          merchantRiskIndicator: Adyen.Checkout.V71.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: Adyen.Checkout.V71.ThreeDSecureData.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            Adyen.Checkout.V71.ApplePayDonations.t()
            | Adyen.Checkout.V71.CardDonations.t()
            | Adyen.Checkout.V71.GooglePayDonations.t()
            | Adyen.Checkout.V71.IdealDonations.t()
            | Adyen.Checkout.V71.PayWithGoogleDonations.t()
            | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          sessionValidity: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Adyen.Checkout.V71.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: Adyen.Checkout.V71.ThreeDs2RequestFields.t() | nil,
          threeDSAuthenticationOnly: boolean | nil
        }

  defstruct [
    :accountInfo,
    :additionalData,
    :amount,
    :applicationInfo,
    :authenticationData,
    :billingAddress,
    :browserInfo,
    :channel,
    :checkoutAttemptId,
    :conversionId,
    :countryCode,
    :dateOfBirth,
    :deliverAt,
    :deliveryAddress,
    :deviceFingerprint,
    :donationAccount,
    :donationCampaignId,
    :donationOriginalPspReference,
    :donationToken,
    :lineItems,
    :merchantAccount,
    :merchantRiskIndicator,
    :metadata,
    :mpiData,
    :origin,
    :paymentMethod,
    :recurringProcessingModel,
    :redirectFromIssuerMethod,
    :redirectToIssuerMethod,
    :reference,
    :returnUrl,
    :sessionValidity,
    :shopperEmail,
    :shopperIP,
    :shopperInteraction,
    :shopperLocale,
    :shopperName,
    :shopperReference,
    :socialSecurityNumber,
    :telephoneNumber,
    :threeDS2RequestData,
    :threeDSAuthenticationOnly
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountInfo: {Adyen.Checkout.V71.AccountInfo, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.V71.Amount, :t},
      applicationInfo: {Adyen.Checkout.V71.ApplicationInfo, :t},
      authenticationData: {Adyen.Checkout.V71.AuthenticationData, :t},
      billingAddress: {Adyen.Checkout.V71.BillingAddress, :t},
      browserInfo: {Adyen.Checkout.V71.BrowserInfo, :t},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      deliverAt: {:string, "date-time"},
      deliveryAddress: {Adyen.Checkout.V71.DeliveryAddress, :t},
      deviceFingerprint: :string,
      donationAccount: :string,
      donationCampaignId: :string,
      donationOriginalPspReference: :string,
      donationToken: :string,
      lineItems: [{Adyen.Checkout.V71.LineItem, :t}],
      merchantAccount: :string,
      merchantRiskIndicator: {Adyen.Checkout.V71.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {Adyen.Checkout.V71.ThreeDSecureData, :t},
      origin: :string,
      paymentMethod:
        {:union,
         [
           {Adyen.Checkout.V71.ApplePayDonations, :t},
           {Adyen.Checkout.V71.CardDonations, :t},
           {Adyen.Checkout.V71.GooglePayDonations, :t},
           {Adyen.Checkout.V71.IdealDonations, :t},
           {Adyen.Checkout.V71.PayWithGoogleDonations, :t}
         ]},
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      sessionValidity: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {Adyen.Checkout.V71.ShopperName, :t},
      shopperReference: :string,
      socialSecurityNumber: :string,
      telephoneNumber: :string,
      threeDS2RequestData: {Adyen.Checkout.V71.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean
    ]
  end
end
