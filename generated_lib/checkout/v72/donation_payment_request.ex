defmodule Adyen.Checkout.V72.DonationPaymentRequest do
  @moduledoc """
  Provides struct and type for a DonationPaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: Adyen.Checkout.V72.AccountInfo.t() | nil,
          amount: Adyen.Checkout.V72.Amount.t(),
          applicationInfo: Adyen.Checkout.V72.ApplicationInfo.t() | nil,
          authenticationData: Adyen.Checkout.V72.AuthenticationData.t() | nil,
          billingAddress: Adyen.Checkout.V72.BillingAddress.t() | nil,
          browserInfo: Adyen.Checkout.V72.BrowserInfo.t() | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          deliveryAddress: Adyen.Checkout.V72.DeliveryAddress.t() | nil,
          deviceFingerprint: String.t() | nil,
          donationAccount: String.t() | nil,
          donationCampaignId: String.t() | nil,
          donationOriginalPspReference: String.t() | nil,
          donationToken: String.t() | nil,
          lineItems: [Adyen.Checkout.V72.LineItem.t()] | nil,
          merchantAccount: String.t(),
          merchantRiskIndicator: Adyen.Checkout.V72.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: Adyen.Checkout.V72.ThreeDSecureData.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            Adyen.Checkout.V72.ApplePayDonations.t()
            | Adyen.Checkout.V72.CardDonations.t()
            | Adyen.Checkout.V72.GooglePayDonations.t()
            | Adyen.Checkout.V72.IdealDonations.t()
            | Adyen.Checkout.V72.PayWithGoogleDonations.t()
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
          shopperName: Adyen.Checkout.V72.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          store: String.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: Adyen.Checkout.V72.ThreeDs2RequestFields.t() | nil
        }

  defstruct [
    :accountInfo,
    :amount,
    :applicationInfo,
    :authenticationData,
    :billingAddress,
    :browserInfo,
    :channel,
    :checkoutAttemptId,
    :countryCode,
    :dateOfBirth,
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
    :store,
    :telephoneNumber,
    :threeDS2RequestData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountInfo: {Adyen.Checkout.V72.AccountInfo, :t},
      amount: {Adyen.Checkout.V72.Amount, :t},
      applicationInfo: {Adyen.Checkout.V72.ApplicationInfo, :t},
      authenticationData: {Adyen.Checkout.V72.AuthenticationData, :t},
      billingAddress: {Adyen.Checkout.V72.BillingAddress, :t},
      browserInfo: {Adyen.Checkout.V72.BrowserInfo, :t},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      deliveryAddress: {Adyen.Checkout.V72.DeliveryAddress, :t},
      deviceFingerprint: :string,
      donationAccount: :string,
      donationCampaignId: :string,
      donationOriginalPspReference: :string,
      donationToken: :string,
      lineItems: [{Adyen.Checkout.V72.LineItem, :t}],
      merchantAccount: :string,
      merchantRiskIndicator: {Adyen.Checkout.V72.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {Adyen.Checkout.V72.ThreeDSecureData, :t},
      origin: :string,
      paymentMethod:
        {:union,
         [
           {Adyen.Checkout.V72.ApplePayDonations, :t},
           {Adyen.Checkout.V72.CardDonations, :t},
           {Adyen.Checkout.V72.GooglePayDonations, :t},
           {Adyen.Checkout.V72.IdealDonations, :t},
           {Adyen.Checkout.V72.PayWithGoogleDonations, :t}
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
      shopperName: {Adyen.Checkout.V72.ShopperName, :t},
      shopperReference: :string,
      socialSecurityNumber: :string,
      store: :string,
      telephoneNumber: :string,
      threeDS2RequestData: {Adyen.Checkout.V72.ThreeDs2RequestFields, :t}
    ]
  end
end
