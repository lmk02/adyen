defmodule Adyen.Checkout.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: Adyen.Checkout.AccountInfo.t() | nil,
          additionalAmount: Adyen.Checkout.Amount.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.Amount.t(),
          applicationInfo: Adyen.Checkout.ApplicationInfo.t() | nil,
          authenticationData: Adyen.Checkout.AuthenticationData.t() | nil,
          bankAccount: Adyen.Checkout.CheckoutBankAccount.t() | nil,
          billingAddress: Adyen.Checkout.BillingAddress.t() | nil,
          browserInfo: Adyen.Checkout.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: Adyen.Checkout.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: Adyen.Checkout.ForexQuote.t() | nil,
          deliverAt: DateTime.t() | nil,
          deliveryAddress: Adyen.Checkout.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          enhancedSchemeData: Adyen.Checkout.EnhancedSchemeData.t() | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: Adyen.Checkout.FundOrigin.t() | nil,
          fundRecipient: Adyen.Checkout.FundRecipient.t() | nil,
          industryUsage: String.t() | nil,
          installments: Adyen.Checkout.Installments.t() | nil,
          lineItems: [Adyen.Checkout.LineItem.t()] | nil,
          localizedShopperStatement: map | nil,
          mandate: Adyen.Checkout.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: Adyen.Checkout.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: Adyen.Checkout.ThreeDSecureData.t() | nil,
          order: Adyen.Checkout.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            Adyen.Checkout.AchDetails.t()
            | Adyen.Checkout.AffirmDetails.t()
            | Adyen.Checkout.AfterpayDetails.t()
            | Adyen.Checkout.AmazonPayDetails.t()
            | Adyen.Checkout.AncvDetails.t()
            | Adyen.Checkout.AndroidPayDetails.t()
            | Adyen.Checkout.ApplePayDetails.t()
            | Adyen.Checkout.BacsDirectDebitDetails.t()
            | Adyen.Checkout.BillDeskDetails.t()
            | Adyen.Checkout.BlikDetails.t()
            | Adyen.Checkout.CardDetails.t()
            | Adyen.Checkout.CashAppDetails.t()
            | Adyen.Checkout.CellulantDetails.t()
            | Adyen.Checkout.DokuDetails.t()
            | Adyen.Checkout.DragonpayDetails.t()
            | Adyen.Checkout.EBankingFinlandDetails.t()
            | Adyen.Checkout.EcontextVoucherDetails.t()
            | Adyen.Checkout.EftDetails.t()
            | Adyen.Checkout.ExternalTokenDetails.t()
            | Adyen.Checkout.FastlaneDetails.t()
            | Adyen.Checkout.GenericIssuerPaymentMethodDetails.t()
            | Adyen.Checkout.GooglePayDetails.t()
            | Adyen.Checkout.IdealDetails.t()
            | Adyen.Checkout.KlarnaDetails.t()
            | Adyen.Checkout.MasterpassDetails.t()
            | Adyen.Checkout.MbwayDetails.t()
            | Adyen.Checkout.MobilePayDetails.t()
            | Adyen.Checkout.MolPayDetails.t()
            | Adyen.Checkout.OpenInvoiceDetails.t()
            | Adyen.Checkout.PayByBankAISDirectDebitDetails.t()
            | Adyen.Checkout.PayByBankDetails.t()
            | Adyen.Checkout.PayPalDetails.t()
            | Adyen.Checkout.PayPayDetails.t()
            | Adyen.Checkout.PayToDetails.t()
            | Adyen.Checkout.PayUUpiDetails.t()
            | Adyen.Checkout.PayWithGoogleDetails.t()
            | Adyen.Checkout.PaymentDetails.t()
            | Adyen.Checkout.PixDetails.t()
            | Adyen.Checkout.PseDetails.t()
            | Adyen.Checkout.RakutenPayDetails.t()
            | Adyen.Checkout.RatepayDetails.t()
            | Adyen.Checkout.RivertyDetails.t()
            | Adyen.Checkout.SamsungPayDetails.t()
            | Adyen.Checkout.SepaDirectDebitDetails.t()
            | Adyen.Checkout.StoredPaymentMethodDetails.t()
            | Adyen.Checkout.TwintDetails.t()
            | Adyen.Checkout.UpiCollectDetails.t()
            | Adyen.Checkout.UpiIntentDetails.t()
            | Adyen.Checkout.UpiQrDetails.t()
            | Adyen.Checkout.VippsDetails.t()
            | Adyen.Checkout.VisaCheckoutDetails.t()
            | Adyen.Checkout.WeChatPayDetails.t()
            | Adyen.Checkout.WeChatPayMiniProgramDetails.t()
            | Adyen.Checkout.ZipDetails.t(),
          paymentValidations: Adyen.Checkout.PaymentValidations.t() | nil,
          platformChargebackLogic: Adyen.Checkout.PlatformChargebackLogic.t() | nil,
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: Adyen.Checkout.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Adyen.Checkout.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          shopperTaxInfo: Adyen.Checkout.ShopperTaxInfo.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [Adyen.Checkout.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [Adyen.Checkout.SubMerchantInfo.t()] | nil,
          surcharge: Adyen.Checkout.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: Adyen.Checkout.ThreeDs2RequestFields.t() | nil,
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
      accountInfo: {Adyen.Checkout.AccountInfo, :t},
      additionalAmount: {Adyen.Checkout.Amount, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.Amount, :t},
      applicationInfo: {Adyen.Checkout.ApplicationInfo, :t},
      authenticationData: {Adyen.Checkout.AuthenticationData, :t},
      bankAccount: {Adyen.Checkout.CheckoutBankAccount, :t},
      billingAddress: {Adyen.Checkout.BillingAddress, :t},
      browserInfo: {Adyen.Checkout.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {Adyen.Checkout.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {Adyen.Checkout.ForexQuote, :t},
      deliverAt: {:string, "date-time"},
      deliveryAddress: {Adyen.Checkout.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      enhancedSchemeData: {Adyen.Checkout.EnhancedSchemeData, :t},
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {Adyen.Checkout.FundOrigin, :t},
      fundRecipient: {Adyen.Checkout.FundRecipient, :t},
      industryUsage: {:enum, ["delayedCharge", "installment", "noShow"]},
      installments: {Adyen.Checkout.Installments, :t},
      lineItems: [{Adyen.Checkout.LineItem, :t}],
      localizedShopperStatement: :map,
      mandate: {Adyen.Checkout.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {Adyen.Checkout.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {Adyen.Checkout.ThreeDSecureData, :t},
      order: {Adyen.Checkout.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {Adyen.Checkout.AchDetails, :t},
           {Adyen.Checkout.AffirmDetails, :t},
           {Adyen.Checkout.AfterpayDetails, :t},
           {Adyen.Checkout.AmazonPayDetails, :t},
           {Adyen.Checkout.AncvDetails, :t},
           {Adyen.Checkout.AndroidPayDetails, :t},
           {Adyen.Checkout.ApplePayDetails, :t},
           {Adyen.Checkout.BacsDirectDebitDetails, :t},
           {Adyen.Checkout.BillDeskDetails, :t},
           {Adyen.Checkout.BlikDetails, :t},
           {Adyen.Checkout.CardDetails, :t},
           {Adyen.Checkout.CashAppDetails, :t},
           {Adyen.Checkout.CellulantDetails, :t},
           {Adyen.Checkout.DokuDetails, :t},
           {Adyen.Checkout.DragonpayDetails, :t},
           {Adyen.Checkout.EBankingFinlandDetails, :t},
           {Adyen.Checkout.EcontextVoucherDetails, :t},
           {Adyen.Checkout.EftDetails, :t},
           {Adyen.Checkout.ExternalTokenDetails, :t},
           {Adyen.Checkout.FastlaneDetails, :t},
           {Adyen.Checkout.GenericIssuerPaymentMethodDetails, :t},
           {Adyen.Checkout.GooglePayDetails, :t},
           {Adyen.Checkout.IdealDetails, :t},
           {Adyen.Checkout.KlarnaDetails, :t},
           {Adyen.Checkout.MasterpassDetails, :t},
           {Adyen.Checkout.MbwayDetails, :t},
           {Adyen.Checkout.MobilePayDetails, :t},
           {Adyen.Checkout.MolPayDetails, :t},
           {Adyen.Checkout.OpenInvoiceDetails, :t},
           {Adyen.Checkout.PayByBankAISDirectDebitDetails, :t},
           {Adyen.Checkout.PayByBankDetails, :t},
           {Adyen.Checkout.PayPalDetails, :t},
           {Adyen.Checkout.PayPayDetails, :t},
           {Adyen.Checkout.PayToDetails, :t},
           {Adyen.Checkout.PayUUpiDetails, :t},
           {Adyen.Checkout.PayWithGoogleDetails, :t},
           {Adyen.Checkout.PaymentDetails, :t},
           {Adyen.Checkout.PixDetails, :t},
           {Adyen.Checkout.PseDetails, :t},
           {Adyen.Checkout.RakutenPayDetails, :t},
           {Adyen.Checkout.RatepayDetails, :t},
           {Adyen.Checkout.RivertyDetails, :t},
           {Adyen.Checkout.SamsungPayDetails, :t},
           {Adyen.Checkout.SepaDirectDebitDetails, :t},
           {Adyen.Checkout.StoredPaymentMethodDetails, :t},
           {Adyen.Checkout.TwintDetails, :t},
           {Adyen.Checkout.UpiCollectDetails, :t},
           {Adyen.Checkout.UpiIntentDetails, :t},
           {Adyen.Checkout.UpiQrDetails, :t},
           {Adyen.Checkout.VippsDetails, :t},
           {Adyen.Checkout.VisaCheckoutDetails, :t},
           {Adyen.Checkout.WeChatPayDetails, :t},
           {Adyen.Checkout.WeChatPayMiniProgramDetails, :t},
           {Adyen.Checkout.ZipDetails, :t}
         ]},
      paymentValidations: {Adyen.Checkout.PaymentValidations, :t},
      platformChargebackLogic: {Adyen.Checkout.PlatformChargebackLogic, :t},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {Adyen.Checkout.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {Adyen.Checkout.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      shopperTaxInfo: {Adyen.Checkout.ShopperTaxInfo, :t},
      socialSecurityNumber: :string,
      splits: [{Adyen.Checkout.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{Adyen.Checkout.SubMerchantInfo, :t}],
      surcharge: {Adyen.Checkout.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {Adyen.Checkout.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
