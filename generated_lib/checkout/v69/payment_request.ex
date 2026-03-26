defmodule Adyen.Checkout.V69.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: Adyen.Checkout.V69.AccountInfo.t() | nil,
          additionalAmount: Adyen.Checkout.V69.Amount.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V69.Amount.t(),
          applicationInfo: Adyen.Checkout.V69.ApplicationInfo.t() | nil,
          authenticationData: Adyen.Checkout.V69.AuthenticationData.t() | nil,
          bankAccount: Adyen.Checkout.V69.CheckoutBankAccount.t() | nil,
          billingAddress: Adyen.Checkout.V69.BillingAddress.t() | nil,
          browserInfo: Adyen.Checkout.V69.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: Adyen.Checkout.V69.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: Adyen.Checkout.V69.ForexQuote.t() | nil,
          deliveryAddress: Adyen.Checkout.V69.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: Adyen.Checkout.V69.FundOrigin.t() | nil,
          fundRecipient: Adyen.Checkout.V69.FundRecipient.t() | nil,
          installments: Adyen.Checkout.V69.Installments.t() | nil,
          lineItems: [Adyen.Checkout.V69.LineItem.t()] | nil,
          localizedShopperStatement: map | nil,
          mandate: Adyen.Checkout.V69.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: Adyen.Checkout.V69.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: Adyen.Checkout.V69.ThreeDSecureData.t() | nil,
          order: Adyen.Checkout.V69.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            Adyen.Checkout.V69.AchDetails.t()
            | Adyen.Checkout.V69.AffirmDetails.t()
            | Adyen.Checkout.V69.AfterpayDetails.t()
            | Adyen.Checkout.V69.AlmaDetails.t()
            | Adyen.Checkout.V69.AmazonPayDetails.t()
            | Adyen.Checkout.V69.AncvDetails.t()
            | Adyen.Checkout.V69.AndroidPayDetails.t()
            | Adyen.Checkout.V69.ApplePayDetails.t()
            | Adyen.Checkout.V69.BacsDirectDebitDetails.t()
            | Adyen.Checkout.V69.BillDeskDetails.t()
            | Adyen.Checkout.V69.BlikDetails.t()
            | Adyen.Checkout.V69.CardDetails.t()
            | Adyen.Checkout.V69.CashAppDetails.t()
            | Adyen.Checkout.V69.CellulantDetails.t()
            | Adyen.Checkout.V69.DirectDebitAuDetails.t()
            | Adyen.Checkout.V69.DokuDetails.t()
            | Adyen.Checkout.V69.DragonpayDetails.t()
            | Adyen.Checkout.V69.EBankingFinlandDetails.t()
            | Adyen.Checkout.V69.EcontextVoucherDetails.t()
            | Adyen.Checkout.V69.EftDetails.t()
            | Adyen.Checkout.V69.ExternalTokenDetails.t()
            | Adyen.Checkout.V69.FastlaneDetails.t()
            | Adyen.Checkout.V69.GenericIssuerPaymentMethodDetails.t()
            | Adyen.Checkout.V69.GooglePayDetails.t()
            | Adyen.Checkout.V69.IdealDetails.t()
            | Adyen.Checkout.V69.KlarnaDetails.t()
            | Adyen.Checkout.V69.KlarnaNetworkDetails.t()
            | Adyen.Checkout.V69.MasterpassDetails.t()
            | Adyen.Checkout.V69.MbwayDetails.t()
            | Adyen.Checkout.V69.MobilePayDetails.t()
            | Adyen.Checkout.V69.MolPayDetails.t()
            | Adyen.Checkout.V69.OpenInvoiceDetails.t()
            | Adyen.Checkout.V69.PayByBankAISDirectDebitDetails.t()
            | Adyen.Checkout.V69.PayByBankDetails.t()
            | Adyen.Checkout.V69.PayPalDetails.t()
            | Adyen.Checkout.V69.PayPayDetails.t()
            | Adyen.Checkout.V69.PayToDetails.t()
            | Adyen.Checkout.V69.PayUUpiDetails.t()
            | Adyen.Checkout.V69.PayWithGoogleDetails.t()
            | Adyen.Checkout.V69.PaymentDetails.t()
            | Adyen.Checkout.V69.PixDetails.t()
            | Adyen.Checkout.V69.PixPayByBankDetails.t()
            | Adyen.Checkout.V69.PseDetails.t()
            | Adyen.Checkout.V69.RakutenPayDetails.t()
            | Adyen.Checkout.V69.RatepayDetails.t()
            | Adyen.Checkout.V69.RivertyDetails.t()
            | Adyen.Checkout.V69.SamsungPayDetails.t()
            | Adyen.Checkout.V69.SepaDirectDebitDetails.t()
            | Adyen.Checkout.V69.StoredPaymentMethodDetails.t()
            | Adyen.Checkout.V69.TwintDetails.t()
            | Adyen.Checkout.V69.UpiCollectDetails.t()
            | Adyen.Checkout.V69.UpiIntentDetails.t()
            | Adyen.Checkout.V69.UpiQrDetails.t()
            | Adyen.Checkout.V69.VippsDetails.t()
            | Adyen.Checkout.V69.VisaCheckoutDetails.t()
            | Adyen.Checkout.V69.WeChatPayDetails.t()
            | Adyen.Checkout.V69.WeChatPayMiniProgramDetails.t()
            | Adyen.Checkout.V69.ZipDetails.t(),
          paymentValidations: Adyen.Checkout.V69.PaymentValidations.t() | nil,
          platformChargebackLogic: Adyen.Checkout.V69.PlatformChargebackLogic.t() | nil,
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: Adyen.Checkout.V69.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Adyen.Checkout.V69.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          shopperTaxInfo: Adyen.Checkout.V69.ShopperTaxInfo.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [Adyen.Checkout.V69.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [Adyen.Checkout.V69.SubMerchantInfo.t()] | nil,
          surcharge: Adyen.Checkout.V69.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: Adyen.Checkout.V69.ThreeDs2RequestFields.t() | nil,
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
    :deliveryAddress,
    :deliveryDate,
    :deviceFingerprint,
    :enableOneClick,
    :enablePayOut,
    :enableRecurring,
    :entityType,
    :fraudOffset,
    :fundOrigin,
    :fundRecipient,
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
      accountInfo: {Adyen.Checkout.V69.AccountInfo, :t},
      additionalAmount: {Adyen.Checkout.V69.Amount, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.V69.Amount, :t},
      applicationInfo: {Adyen.Checkout.V69.ApplicationInfo, :t},
      authenticationData: {Adyen.Checkout.V69.AuthenticationData, :t},
      bankAccount: {Adyen.Checkout.V69.CheckoutBankAccount, :t},
      billingAddress: {Adyen.Checkout.V69.BillingAddress, :t},
      browserInfo: {Adyen.Checkout.V69.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {Adyen.Checkout.V69.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {Adyen.Checkout.V69.ForexQuote, :t},
      deliveryAddress: {Adyen.Checkout.V69.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {Adyen.Checkout.V69.FundOrigin, :t},
      fundRecipient: {Adyen.Checkout.V69.FundRecipient, :t},
      installments: {Adyen.Checkout.V69.Installments, :t},
      lineItems: [{Adyen.Checkout.V69.LineItem, :t}],
      localizedShopperStatement: :map,
      mandate: {Adyen.Checkout.V69.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {Adyen.Checkout.V69.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {Adyen.Checkout.V69.ThreeDSecureData, :t},
      order: {Adyen.Checkout.V69.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {Adyen.Checkout.V69.AchDetails, :t},
           {Adyen.Checkout.V69.AffirmDetails, :t},
           {Adyen.Checkout.V69.AfterpayDetails, :t},
           {Adyen.Checkout.V69.AlmaDetails, :t},
           {Adyen.Checkout.V69.AmazonPayDetails, :t},
           {Adyen.Checkout.V69.AncvDetails, :t},
           {Adyen.Checkout.V69.AndroidPayDetails, :t},
           {Adyen.Checkout.V69.ApplePayDetails, :t},
           {Adyen.Checkout.V69.BacsDirectDebitDetails, :t},
           {Adyen.Checkout.V69.BillDeskDetails, :t},
           {Adyen.Checkout.V69.BlikDetails, :t},
           {Adyen.Checkout.V69.CardDetails, :t},
           {Adyen.Checkout.V69.CashAppDetails, :t},
           {Adyen.Checkout.V69.CellulantDetails, :t},
           {Adyen.Checkout.V69.DirectDebitAuDetails, :t},
           {Adyen.Checkout.V69.DokuDetails, :t},
           {Adyen.Checkout.V69.DragonpayDetails, :t},
           {Adyen.Checkout.V69.EBankingFinlandDetails, :t},
           {Adyen.Checkout.V69.EcontextVoucherDetails, :t},
           {Adyen.Checkout.V69.EftDetails, :t},
           {Adyen.Checkout.V69.ExternalTokenDetails, :t},
           {Adyen.Checkout.V69.FastlaneDetails, :t},
           {Adyen.Checkout.V69.GenericIssuerPaymentMethodDetails, :t},
           {Adyen.Checkout.V69.GooglePayDetails, :t},
           {Adyen.Checkout.V69.IdealDetails, :t},
           {Adyen.Checkout.V69.KlarnaDetails, :t},
           {Adyen.Checkout.V69.KlarnaNetworkDetails, :t},
           {Adyen.Checkout.V69.MasterpassDetails, :t},
           {Adyen.Checkout.V69.MbwayDetails, :t},
           {Adyen.Checkout.V69.MobilePayDetails, :t},
           {Adyen.Checkout.V69.MolPayDetails, :t},
           {Adyen.Checkout.V69.OpenInvoiceDetails, :t},
           {Adyen.Checkout.V69.PayByBankAISDirectDebitDetails, :t},
           {Adyen.Checkout.V69.PayByBankDetails, :t},
           {Adyen.Checkout.V69.PayPalDetails, :t},
           {Adyen.Checkout.V69.PayPayDetails, :t},
           {Adyen.Checkout.V69.PayToDetails, :t},
           {Adyen.Checkout.V69.PayUUpiDetails, :t},
           {Adyen.Checkout.V69.PayWithGoogleDetails, :t},
           {Adyen.Checkout.V69.PaymentDetails, :t},
           {Adyen.Checkout.V69.PixDetails, :t},
           {Adyen.Checkout.V69.PixPayByBankDetails, :t},
           {Adyen.Checkout.V69.PseDetails, :t},
           {Adyen.Checkout.V69.RakutenPayDetails, :t},
           {Adyen.Checkout.V69.RatepayDetails, :t},
           {Adyen.Checkout.V69.RivertyDetails, :t},
           {Adyen.Checkout.V69.SamsungPayDetails, :t},
           {Adyen.Checkout.V69.SepaDirectDebitDetails, :t},
           {Adyen.Checkout.V69.StoredPaymentMethodDetails, :t},
           {Adyen.Checkout.V69.TwintDetails, :t},
           {Adyen.Checkout.V69.UpiCollectDetails, :t},
           {Adyen.Checkout.V69.UpiIntentDetails, :t},
           {Adyen.Checkout.V69.UpiQrDetails, :t},
           {Adyen.Checkout.V69.VippsDetails, :t},
           {Adyen.Checkout.V69.VisaCheckoutDetails, :t},
           {Adyen.Checkout.V69.WeChatPayDetails, :t},
           {Adyen.Checkout.V69.WeChatPayMiniProgramDetails, :t},
           {Adyen.Checkout.V69.ZipDetails, :t}
         ]},
      paymentValidations: {Adyen.Checkout.V69.PaymentValidations, :t},
      platformChargebackLogic: {Adyen.Checkout.V69.PlatformChargebackLogic, :t},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {Adyen.Checkout.V69.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {Adyen.Checkout.V69.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      shopperTaxInfo: {Adyen.Checkout.V69.ShopperTaxInfo, :t},
      socialSecurityNumber: :string,
      splits: [{Adyen.Checkout.V69.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{Adyen.Checkout.V69.SubMerchantInfo, :t}],
      surcharge: {Adyen.Checkout.V69.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {Adyen.Checkout.V69.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
