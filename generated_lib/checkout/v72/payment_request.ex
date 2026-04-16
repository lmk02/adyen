defmodule Adyen.Checkout.V72.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: Adyen.Checkout.V72.AccountInfo.t() | nil,
          additionalAmount: Adyen.Checkout.V72.Amount.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V72.Amount.t(),
          applicationInfo: Adyen.Checkout.V72.ApplicationInfo.t() | nil,
          authenticationData: Adyen.Checkout.V72.AuthenticationData.t() | nil,
          bankAccount: Adyen.Checkout.V72.CheckoutBankAccount.t() | nil,
          billingAddress: Adyen.Checkout.V72.BillingAddress.t() | nil,
          browserInfo: Adyen.Checkout.V72.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: Adyen.Checkout.V72.Company.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: Adyen.Checkout.V72.ForexQuote.t() | nil,
          deliverAt: DateTime.t() | nil,
          deliveryAddress: Adyen.Checkout.V72.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          enhancedSchemeData: Adyen.Checkout.V72.EnhancedSchemeData.t() | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: Adyen.Checkout.V72.FundOrigin.t() | nil,
          fundRecipient: Adyen.Checkout.V72.FundRecipient.t() | nil,
          industryUsage: String.t() | nil,
          installments: Adyen.Checkout.V72.Installments.t() | nil,
          lineItems: [Adyen.Checkout.V72.LineItem.t()] | nil,
          localizedShopperStatement: map | nil,
          mandate: Adyen.Checkout.V72.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: Adyen.Checkout.V72.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: Adyen.Checkout.V72.ThreeDSecureData.t() | nil,
          order: Adyen.Checkout.V72.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            Adyen.Checkout.V72.AchDetails.t()
            | Adyen.Checkout.V72.AffirmDetails.t()
            | Adyen.Checkout.V72.AfterpayDetails.t()
            | Adyen.Checkout.V72.AlmaDetails.t()
            | Adyen.Checkout.V72.AmazonPayDetails.t()
            | Adyen.Checkout.V72.AncvDetails.t()
            | Adyen.Checkout.V72.AndroidPayDetails.t()
            | Adyen.Checkout.V72.ApplePayDetails.t()
            | Adyen.Checkout.V72.BacsDirectDebitDetails.t()
            | Adyen.Checkout.V72.BillDeskDetails.t()
            | Adyen.Checkout.V72.BlikDetails.t()
            | Adyen.Checkout.V72.CardDetails.t()
            | Adyen.Checkout.V72.CashAppDetails.t()
            | Adyen.Checkout.V72.CellulantDetails.t()
            | Adyen.Checkout.V72.DirectDebitAuDetails.t()
            | Adyen.Checkout.V72.DokuDetails.t()
            | Adyen.Checkout.V72.DragonpayDetails.t()
            | Adyen.Checkout.V72.EBankingFinlandDetails.t()
            | Adyen.Checkout.V72.EcontextVoucherDetails.t()
            | Adyen.Checkout.V72.EftDetails.t()
            | Adyen.Checkout.V72.ExternalTokenDetails.t()
            | Adyen.Checkout.V72.FastlaneDetails.t()
            | Adyen.Checkout.V72.GenericIssuerPaymentMethodDetails.t()
            | Adyen.Checkout.V72.GooglePayDetails.t()
            | Adyen.Checkout.V72.IdealDetails.t()
            | Adyen.Checkout.V72.KlarnaDetails.t()
            | Adyen.Checkout.V72.KlarnaNetworkDetails.t()
            | Adyen.Checkout.V72.MasterpassDetails.t()
            | Adyen.Checkout.V72.MbwayDetails.t()
            | Adyen.Checkout.V72.MobilePayDetails.t()
            | Adyen.Checkout.V72.MolPayDetails.t()
            | Adyen.Checkout.V72.OpenInvoiceDetails.t()
            | Adyen.Checkout.V72.PayByBankAISDirectDebitDetails.t()
            | Adyen.Checkout.V72.PayByBankDetails.t()
            | Adyen.Checkout.V72.PayPalDetails.t()
            | Adyen.Checkout.V72.PayPayDetails.t()
            | Adyen.Checkout.V72.PayToDetails.t()
            | Adyen.Checkout.V72.PayUUpiDetails.t()
            | Adyen.Checkout.V72.PayWithGoogleDetails.t()
            | Adyen.Checkout.V72.PaymentDetails.t()
            | Adyen.Checkout.V72.PixDetails.t()
            | Adyen.Checkout.V72.PixPayByBankDetails.t()
            | Adyen.Checkout.V72.PseDetails.t()
            | Adyen.Checkout.V72.RakutenPayDetails.t()
            | Adyen.Checkout.V72.RatepayDetails.t()
            | Adyen.Checkout.V72.RivertyDetails.t()
            | Adyen.Checkout.V72.SamsungPayDetails.t()
            | Adyen.Checkout.V72.SepaDirectDebitDetails.t()
            | Adyen.Checkout.V72.StoredPaymentMethodDetails.t()
            | Adyen.Checkout.V72.TwintDetails.t()
            | Adyen.Checkout.V72.UpiCollectDetails.t()
            | Adyen.Checkout.V72.UpiIntentDetails.t()
            | Adyen.Checkout.V72.UpiQrDetails.t()
            | Adyen.Checkout.V72.VippsDetails.t()
            | Adyen.Checkout.V72.VisaCheckoutDetails.t()
            | Adyen.Checkout.V72.WeChatPayDetails.t()
            | Adyen.Checkout.V72.WeChatPayMiniProgramDetails.t()
            | Adyen.Checkout.V72.ZipDetails.t(),
          paymentValidations: Adyen.Checkout.V72.PaymentValidations.t() | nil,
          platformChargebackLogic: Adyen.Checkout.V72.PlatformChargebackLogic.t() | nil,
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: Adyen.Checkout.V72.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Adyen.Checkout.V72.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          shopperTaxInfo: Adyen.Checkout.V72.ShopperTaxInfo.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [Adyen.Checkout.V72.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [Adyen.Checkout.V72.SubMerchantInfo.t()] | nil,
          surcharge: Adyen.Checkout.V72.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: Adyen.Checkout.V72.ThreeDs2RequestFields.t() | nil,
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
      accountInfo: {Adyen.Checkout.V72.AccountInfo, :t},
      additionalAmount: {Adyen.Checkout.V72.Amount, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.V72.Amount, :t},
      applicationInfo: {Adyen.Checkout.V72.ApplicationInfo, :t},
      authenticationData: {Adyen.Checkout.V72.AuthenticationData, :t},
      bankAccount: {Adyen.Checkout.V72.CheckoutBankAccount, :t},
      billingAddress: {Adyen.Checkout.V72.BillingAddress, :t},
      browserInfo: {Adyen.Checkout.V72.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {Adyen.Checkout.V72.Company, :t},
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {Adyen.Checkout.V72.ForexQuote, :t},
      deliverAt: {:string, "date-time"},
      deliveryAddress: {Adyen.Checkout.V72.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      enhancedSchemeData: {Adyen.Checkout.V72.EnhancedSchemeData, :t},
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {Adyen.Checkout.V72.FundOrigin, :t},
      fundRecipient: {Adyen.Checkout.V72.FundRecipient, :t},
      industryUsage: {:enum, ["delayedCharge", "installment", "noShow"]},
      installments: {Adyen.Checkout.V72.Installments, :t},
      lineItems: [{Adyen.Checkout.V72.LineItem, :t}],
      localizedShopperStatement: :map,
      mandate: {Adyen.Checkout.V72.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {Adyen.Checkout.V72.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {Adyen.Checkout.V72.ThreeDSecureData, :t},
      order: {Adyen.Checkout.V72.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {Adyen.Checkout.V72.AchDetails, :t},
           {Adyen.Checkout.V72.AffirmDetails, :t},
           {Adyen.Checkout.V72.AfterpayDetails, :t},
           {Adyen.Checkout.V72.AlmaDetails, :t},
           {Adyen.Checkout.V72.AmazonPayDetails, :t},
           {Adyen.Checkout.V72.AncvDetails, :t},
           {Adyen.Checkout.V72.AndroidPayDetails, :t},
           {Adyen.Checkout.V72.ApplePayDetails, :t},
           {Adyen.Checkout.V72.BacsDirectDebitDetails, :t},
           {Adyen.Checkout.V72.BillDeskDetails, :t},
           {Adyen.Checkout.V72.BlikDetails, :t},
           {Adyen.Checkout.V72.CardDetails, :t},
           {Adyen.Checkout.V72.CashAppDetails, :t},
           {Adyen.Checkout.V72.CellulantDetails, :t},
           {Adyen.Checkout.V72.DirectDebitAuDetails, :t},
           {Adyen.Checkout.V72.DokuDetails, :t},
           {Adyen.Checkout.V72.DragonpayDetails, :t},
           {Adyen.Checkout.V72.EBankingFinlandDetails, :t},
           {Adyen.Checkout.V72.EcontextVoucherDetails, :t},
           {Adyen.Checkout.V72.EftDetails, :t},
           {Adyen.Checkout.V72.ExternalTokenDetails, :t},
           {Adyen.Checkout.V72.FastlaneDetails, :t},
           {Adyen.Checkout.V72.GenericIssuerPaymentMethodDetails, :t},
           {Adyen.Checkout.V72.GooglePayDetails, :t},
           {Adyen.Checkout.V72.IdealDetails, :t},
           {Adyen.Checkout.V72.KlarnaDetails, :t},
           {Adyen.Checkout.V72.KlarnaNetworkDetails, :t},
           {Adyen.Checkout.V72.MasterpassDetails, :t},
           {Adyen.Checkout.V72.MbwayDetails, :t},
           {Adyen.Checkout.V72.MobilePayDetails, :t},
           {Adyen.Checkout.V72.MolPayDetails, :t},
           {Adyen.Checkout.V72.OpenInvoiceDetails, :t},
           {Adyen.Checkout.V72.PayByBankAISDirectDebitDetails, :t},
           {Adyen.Checkout.V72.PayByBankDetails, :t},
           {Adyen.Checkout.V72.PayPalDetails, :t},
           {Adyen.Checkout.V72.PayPayDetails, :t},
           {Adyen.Checkout.V72.PayToDetails, :t},
           {Adyen.Checkout.V72.PayUUpiDetails, :t},
           {Adyen.Checkout.V72.PayWithGoogleDetails, :t},
           {Adyen.Checkout.V72.PaymentDetails, :t},
           {Adyen.Checkout.V72.PixDetails, :t},
           {Adyen.Checkout.V72.PixPayByBankDetails, :t},
           {Adyen.Checkout.V72.PseDetails, :t},
           {Adyen.Checkout.V72.RakutenPayDetails, :t},
           {Adyen.Checkout.V72.RatepayDetails, :t},
           {Adyen.Checkout.V72.RivertyDetails, :t},
           {Adyen.Checkout.V72.SamsungPayDetails, :t},
           {Adyen.Checkout.V72.SepaDirectDebitDetails, :t},
           {Adyen.Checkout.V72.StoredPaymentMethodDetails, :t},
           {Adyen.Checkout.V72.TwintDetails, :t},
           {Adyen.Checkout.V72.UpiCollectDetails, :t},
           {Adyen.Checkout.V72.UpiIntentDetails, :t},
           {Adyen.Checkout.V72.UpiQrDetails, :t},
           {Adyen.Checkout.V72.VippsDetails, :t},
           {Adyen.Checkout.V72.VisaCheckoutDetails, :t},
           {Adyen.Checkout.V72.WeChatPayDetails, :t},
           {Adyen.Checkout.V72.WeChatPayMiniProgramDetails, :t},
           {Adyen.Checkout.V72.ZipDetails, :t}
         ]},
      paymentValidations: {Adyen.Checkout.V72.PaymentValidations, :t},
      platformChargebackLogic: {Adyen.Checkout.V72.PlatformChargebackLogic, :t},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {Adyen.Checkout.V72.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {Adyen.Checkout.V72.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      shopperTaxInfo: {Adyen.Checkout.V72.ShopperTaxInfo, :t},
      socialSecurityNumber: :string,
      splits: [{Adyen.Checkout.V72.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{Adyen.Checkout.V72.SubMerchantInfo, :t}],
      surcharge: {Adyen.Checkout.V72.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {Adyen.Checkout.V72.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
