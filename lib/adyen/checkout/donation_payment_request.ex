defmodule Adyen.Checkout.DonationPaymentRequest do
  @moduledoc """
  Provides struct and type for a DonationPaymentRequest
  """

  alias Adyen.Checkout.AccountInfo
  alias Adyen.Checkout.Amount
  alias Adyen.Checkout.ApplePayDonations
  alias Adyen.Checkout.ApplicationInfo
  alias Adyen.Checkout.AuthenticationData
  alias Adyen.Checkout.BillingAddress
  alias Adyen.Checkout.BrowserInfo
  alias Adyen.Checkout.CardDonations
  alias Adyen.Checkout.DeliveryAddress
  alias Adyen.Checkout.GooglePayDonations
  alias Adyen.Checkout.IdealDonations
  alias Adyen.Checkout.LineItem
  alias Adyen.Checkout.MerchantRiskIndicator
  alias Adyen.Checkout.PayWithGoogleDonations
  alias Adyen.Checkout.ShopperName
  alias Adyen.Checkout.ThreeDs2RequestFields
  alias Adyen.Checkout.ThreeDSecureData

  @type t :: %__MODULE__{
          accountInfo: AccountInfo.t() | nil,
          additionalData: map | nil,
          amount: Amount.t(),
          applicationInfo: ApplicationInfo.t() | nil,
          authenticationData: AuthenticationData.t() | nil,
          billingAddress: BillingAddress.t() | nil,
          browserInfo: BrowserInfo.t() | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          deliverAt: DateTime.t() | nil,
          deliveryAddress: DeliveryAddress.t() | nil,
          deviceFingerprint: String.t() | nil,
          donationAccount: String.t() | nil,
          donationCampaignId: String.t() | nil,
          donationOriginalPspReference: String.t() | nil,
          donationToken: String.t() | nil,
          lineItems: [LineItem.t()] | nil,
          merchantAccount: String.t(),
          merchantRiskIndicator: MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: ThreeDSecureData.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            ApplePayDonations.t()
            | CardDonations.t()
            | GooglePayDonations.t()
            | IdealDonations.t()
            | PayWithGoogleDonations.t()
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
          shopperName: ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: ThreeDs2RequestFields.t() | nil,
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
      accountInfo: {AccountInfo, :t},
      additionalData: :map,
      amount: {Amount, :t},
      applicationInfo: {ApplicationInfo, :t},
      authenticationData: {AuthenticationData, :t},
      billingAddress: {BillingAddress, :t},
      browserInfo: {BrowserInfo, :t},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      deliverAt: {:string, "date-time"},
      deliveryAddress: {DeliveryAddress, :t},
      deviceFingerprint: :string,
      donationAccount: :string,
      donationCampaignId: :string,
      donationOriginalPspReference: :string,
      donationToken: :string,
      lineItems: [{LineItem, :t}],
      merchantAccount: :string,
      merchantRiskIndicator: {MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {ThreeDSecureData, :t},
      origin: :string,
      paymentMethod:
        {:union,
         [
           {ApplePayDonations, :t},
           {CardDonations, :t},
           {GooglePayDonations, :t},
           {IdealDonations, :t},
           {PayWithGoogleDonations, :t}
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
      shopperName: {ShopperName, :t},
      shopperReference: :string,
      socialSecurityNumber: :string,
      telephoneNumber: :string,
      threeDS2RequestData: {ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean
    ]
  end
end
