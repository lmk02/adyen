defmodule Adyen.Checkout.V71.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: Adyen.Checkout.V71.AccountInfo.t() | nil,
          additionalAmount: Adyen.Checkout.V71.Amount.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V71.Amount.t(),
          applicationInfo: Adyen.Checkout.V71.ApplicationInfo.t() | nil,
          authenticationData: Adyen.Checkout.V71.AuthenticationData.t() | nil,
          bankAccount: Adyen.Checkout.V71.CheckoutBankAccount.t() | nil,
          billingAddress: Adyen.Checkout.V71.BillingAddress.t() | nil,
          browserInfo: Adyen.Checkout.V71.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: Adyen.Checkout.V71.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: Adyen.Checkout.V71.ForexQuote.t() | nil,
          deliverAt: DateTime.t() | nil,
          deliveryAddress: Adyen.Checkout.V71.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          enhancedSchemeData: Adyen.Checkout.V71.EnhancedSchemeData.t() | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: Adyen.Checkout.V71.FundOrigin.t() | nil,
          fundRecipient: Adyen.Checkout.V71.FundRecipient.t() | nil,
          industryUsage: String.t() | nil,
          installments: Adyen.Checkout.V71.Installments.t() | nil,
          lineItems: [Adyen.Checkout.V71.LineItem.t()] | nil,
          localizedShopperStatement: map | nil,
          mandate: Adyen.Checkout.V71.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: Adyen.Checkout.V71.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: Adyen.Checkout.V71.ThreeDSecureData.t() | nil,
          order: Adyen.Checkout.V71.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            Adyen.Checkout.V71.AchDetails.t()
            | Adyen.Checkout.V71.AffirmDetails.t()
            | Adyen.Checkout.V71.AfterpayDetails.t()
            | Adyen.Checkout.V71.AmazonPayDetails.t()
            | Adyen.Checkout.V71.AncvDetails.t()
            | Adyen.Checkout.V71.AndroidPayDetails.t()
            | Adyen.Checkout.V71.ApplePayDetails.t()
            | Adyen.Checkout.V71.BacsDirectDebitDetails.t()
            | Adyen.Checkout.V71.BillDeskDetails.t()
            | Adyen.Checkout.V71.BlikDetails.t()
            | Adyen.Checkout.V71.CardDetails.t()
            | Adyen.Checkout.V71.CashAppDetails.t()
            | Adyen.Checkout.V71.CellulantDetails.t()
            | Adyen.Checkout.V71.DokuDetails.t()
            | Adyen.Checkout.V71.DragonpayDetails.t()
            | Adyen.Checkout.V71.EBankingFinlandDetails.t()
            | Adyen.Checkout.V71.EcontextVoucherDetails.t()
            | Adyen.Checkout.V71.EftDetails.t()
            | Adyen.Checkout.V71.ExternalTokenDetails.t()
            | Adyen.Checkout.V71.FastlaneDetails.t()
            | Adyen.Checkout.V71.GenericIssuerPaymentMethodDetails.t()
            | Adyen.Checkout.V71.GooglePayDetails.t()
            | Adyen.Checkout.V71.IdealDetails.t()
            | Adyen.Checkout.V71.KlarnaDetails.t()
            | Adyen.Checkout.V71.MasterpassDetails.t()
            | Adyen.Checkout.V71.MbwayDetails.t()
            | Adyen.Checkout.V71.MobilePayDetails.t()
            | Adyen.Checkout.V71.MolPayDetails.t()
            | Adyen.Checkout.V71.OpenInvoiceDetails.t()
            | Adyen.Checkout.V71.PayByBankAISDirectDebitDetails.t()
            | Adyen.Checkout.V71.PayByBankDetails.t()
            | Adyen.Checkout.V71.PayPalDetails.t()
            | Adyen.Checkout.V71.PayPayDetails.t()
            | Adyen.Checkout.V71.PayToDetails.t()
            | Adyen.Checkout.V71.PayUUpiDetails.t()
            | Adyen.Checkout.V71.PayWithGoogleDetails.t()
            | Adyen.Checkout.V71.PaymentDetails.t()
            | Adyen.Checkout.V71.PixDetails.t()
            | Adyen.Checkout.V71.PseDetails.t()
            | Adyen.Checkout.V71.RakutenPayDetails.t()
            | Adyen.Checkout.V71.RatepayDetails.t()
            | Adyen.Checkout.V71.RivertyDetails.t()
            | Adyen.Checkout.V71.SamsungPayDetails.t()
            | Adyen.Checkout.V71.SepaDirectDebitDetails.t()
            | Adyen.Checkout.V71.StoredPaymentMethodDetails.t()
            | Adyen.Checkout.V71.TwintDetails.t()
            | Adyen.Checkout.V71.UpiCollectDetails.t()
            | Adyen.Checkout.V71.UpiIntentDetails.t()
            | Adyen.Checkout.V71.UpiQrDetails.t()
            | Adyen.Checkout.V71.VippsDetails.t()
            | Adyen.Checkout.V71.VisaCheckoutDetails.t()
            | Adyen.Checkout.V71.WeChatPayDetails.t()
            | Adyen.Checkout.V71.WeChatPayMiniProgramDetails.t()
            | Adyen.Checkout.V71.ZipDetails.t(),
          paymentValidations: Adyen.Checkout.V71.PaymentValidations.t() | nil,
          platformChargebackLogic: Adyen.Checkout.V71.PlatformChargebackLogic.t() | nil,
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: Adyen.Checkout.V71.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Adyen.Checkout.V71.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          shopperTaxInfo: Adyen.Checkout.V71.ShopperTaxInfo.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [Adyen.Checkout.V71.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [Adyen.Checkout.V71.SubMerchantInfo.t()] | nil,
          surcharge: Adyen.Checkout.V71.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: Adyen.Checkout.V71.ThreeDs2RequestFields.t() | nil,
          threeDSAuthenticationOnly: boolean | nil,
          trustedShopper: boolean | nil
        }

  defstruct [
    :accountInfo,
    :additionalAmount,
    :additionalData,
    :amount,
    :applicationInfo,
    :authenticationData,
    :bankAccount,
    :billingAddress,
    :browserInfo,
    :captureDelayHours,
    :channel,
    :checkoutAttemptId,
    :company,
    :conversionId,
    :countryCode,
    :dateOfBirth,
    :dccQuote,
    :deliverAt,
    :deliveryAddress,
    :deliveryDate,
    :deviceFingerprint,
    :enableOneClick,
    :enablePayOut,
    :enableRecurring,
    :enhancedSchemeData,
    :entityType,
    :fraudOffset,
    :fundOrigin,
    :fundRecipient,
    :industryUsage,
    :installments,
    :lineItems,
    :localizedShopperStatement,
    :mandate,
    :mcc,
    :merchantAccount,
    :merchantOrderReference,
    :merchantRiskIndicator,
    :metadata,
    :mpiData,
    :order,
    :orderReference,
    :origin,
    :paymentMethod,
    :paymentValidations,
    :platformChargebackLogic,
    :recurringExpiry,
    :recurringFrequency,
    :recurringProcessingModel,
    :redirectFromIssuerMethod,
    :redirectToIssuerMethod,
    :reference,
    :returnUrl,
    :riskData,
    :sessionValidity,
    :shopperConversionId,
    :shopperEmail,
    :shopperIP,
    :shopperInteraction,
    :shopperLocale,
    :shopperName,
    :shopperReference,
    :shopperStatement,
    :shopperTaxInfo,
    :socialSecurityNumber,
    :splits,
    :store,
    :storePaymentMethod,
    :subMerchants,
    :surcharge,
    :telephoneNumber,
    :threeDS2RequestData,
    :threeDSAuthenticationOnly,
    :trustedShopper
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountInfo: {Adyen.Checkout.V71.AccountInfo, :t},
      additionalAmount: {Adyen.Checkout.V71.Amount, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.V71.Amount, :t},
      applicationInfo: {Adyen.Checkout.V71.ApplicationInfo, :t},
      authenticationData: {Adyen.Checkout.V71.AuthenticationData, :t},
      bankAccount: {Adyen.Checkout.V71.CheckoutBankAccount, :t},
      billingAddress: {Adyen.Checkout.V71.BillingAddress, :t},
      browserInfo: {Adyen.Checkout.V71.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {Adyen.Checkout.V71.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {Adyen.Checkout.V71.ForexQuote, :t},
      deliverAt: {:string, "date-time"},
      deliveryAddress: {Adyen.Checkout.V71.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      enhancedSchemeData: {Adyen.Checkout.V71.EnhancedSchemeData, :t},
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {Adyen.Checkout.V71.FundOrigin, :t},
      fundRecipient: {Adyen.Checkout.V71.FundRecipient, :t},
      industryUsage: {:enum, ["delayedCharge", "installment", "noShow"]},
      installments: {Adyen.Checkout.V71.Installments, :t},
      lineItems: [{Adyen.Checkout.V71.LineItem, :t}],
      localizedShopperStatement: :map,
      mandate: {Adyen.Checkout.V71.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {Adyen.Checkout.V71.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {Adyen.Checkout.V71.ThreeDSecureData, :t},
      order: {Adyen.Checkout.V71.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {Adyen.Checkout.V71.AchDetails, :t},
           {Adyen.Checkout.V71.AffirmDetails, :t},
           {Adyen.Checkout.V71.AfterpayDetails, :t},
           {Adyen.Checkout.V71.AmazonPayDetails, :t},
           {Adyen.Checkout.V71.AncvDetails, :t},
           {Adyen.Checkout.V71.AndroidPayDetails, :t},
           {Adyen.Checkout.V71.ApplePayDetails, :t},
           {Adyen.Checkout.V71.BacsDirectDebitDetails, :t},
           {Adyen.Checkout.V71.BillDeskDetails, :t},
           {Adyen.Checkout.V71.BlikDetails, :t},
           {Adyen.Checkout.V71.CardDetails, :t},
           {Adyen.Checkout.V71.CashAppDetails, :t},
           {Adyen.Checkout.V71.CellulantDetails, :t},
           {Adyen.Checkout.V71.DokuDetails, :t},
           {Adyen.Checkout.V71.DragonpayDetails, :t},
           {Adyen.Checkout.V71.EBankingFinlandDetails, :t},
           {Adyen.Checkout.V71.EcontextVoucherDetails, :t},
           {Adyen.Checkout.V71.EftDetails, :t},
           {Adyen.Checkout.V71.ExternalTokenDetails, :t},
           {Adyen.Checkout.V71.FastlaneDetails, :t},
           {Adyen.Checkout.V71.GenericIssuerPaymentMethodDetails, :t},
           {Adyen.Checkout.V71.GooglePayDetails, :t},
           {Adyen.Checkout.V71.IdealDetails, :t},
           {Adyen.Checkout.V71.KlarnaDetails, :t},
           {Adyen.Checkout.V71.MasterpassDetails, :t},
           {Adyen.Checkout.V71.MbwayDetails, :t},
           {Adyen.Checkout.V71.MobilePayDetails, :t},
           {Adyen.Checkout.V71.MolPayDetails, :t},
           {Adyen.Checkout.V71.OpenInvoiceDetails, :t},
           {Adyen.Checkout.V71.PayByBankAISDirectDebitDetails, :t},
           {Adyen.Checkout.V71.PayByBankDetails, :t},
           {Adyen.Checkout.V71.PayPalDetails, :t},
           {Adyen.Checkout.V71.PayPayDetails, :t},
           {Adyen.Checkout.V71.PayToDetails, :t},
           {Adyen.Checkout.V71.PayUUpiDetails, :t},
           {Adyen.Checkout.V71.PayWithGoogleDetails, :t},
           {Adyen.Checkout.V71.PaymentDetails, :t},
           {Adyen.Checkout.V71.PixDetails, :t},
           {Adyen.Checkout.V71.PseDetails, :t},
           {Adyen.Checkout.V71.RakutenPayDetails, :t},
           {Adyen.Checkout.V71.RatepayDetails, :t},
           {Adyen.Checkout.V71.RivertyDetails, :t},
           {Adyen.Checkout.V71.SamsungPayDetails, :t},
           {Adyen.Checkout.V71.SepaDirectDebitDetails, :t},
           {Adyen.Checkout.V71.StoredPaymentMethodDetails, :t},
           {Adyen.Checkout.V71.TwintDetails, :t},
           {Adyen.Checkout.V71.UpiCollectDetails, :t},
           {Adyen.Checkout.V71.UpiIntentDetails, :t},
           {Adyen.Checkout.V71.UpiQrDetails, :t},
           {Adyen.Checkout.V71.VippsDetails, :t},
           {Adyen.Checkout.V71.VisaCheckoutDetails, :t},
           {Adyen.Checkout.V71.WeChatPayDetails, :t},
           {Adyen.Checkout.V71.WeChatPayMiniProgramDetails, :t},
           {Adyen.Checkout.V71.ZipDetails, :t}
         ]},
      paymentValidations: {Adyen.Checkout.V71.PaymentValidations, :t},
      platformChargebackLogic: {Adyen.Checkout.V71.PlatformChargebackLogic, :t},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {Adyen.Checkout.V71.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {Adyen.Checkout.V71.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      shopperTaxInfo: {Adyen.Checkout.V71.ShopperTaxInfo, :t},
      socialSecurityNumber: :string,
      splits: [{Adyen.Checkout.V71.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{Adyen.Checkout.V71.SubMerchantInfo, :t}],
      surcharge: {Adyen.Checkout.V71.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {Adyen.Checkout.V71.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
