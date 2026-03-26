defmodule Adyen.Checkout.V68.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: Adyen.Checkout.V68.AccountInfo.t() | nil,
          additionalAmount: Adyen.Checkout.V68.Amount.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V68.Amount.t(),
          applicationInfo: Adyen.Checkout.V68.ApplicationInfo.t() | nil,
          bankAccount: Adyen.Checkout.V68.CheckoutBankAccount.t() | nil,
          billingAddress: Adyen.Checkout.V68.BillingAddress.t() | nil,
          browserInfo: Adyen.Checkout.V68.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: Adyen.Checkout.V68.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: Adyen.Checkout.V68.ForexQuote.t() | nil,
          deliveryAddress: Adyen.Checkout.V68.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: Adyen.Checkout.V68.FundOrigin.t() | nil,
          fundRecipient: Adyen.Checkout.V68.FundRecipient.t() | nil,
          installments: Adyen.Checkout.V68.Installments.t() | nil,
          lineItems: [Adyen.Checkout.V68.LineItem.t()] | nil,
          localizedShopperStatement: map | nil,
          mandate: Adyen.Checkout.V68.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: Adyen.Checkout.V68.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: Adyen.Checkout.V68.ThreeDSecureData.t() | nil,
          order: Adyen.Checkout.V68.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            Adyen.Checkout.V68.AchDetails.t()
            | Adyen.Checkout.V68.AffirmDetails.t()
            | Adyen.Checkout.V68.AfterpayDetails.t()
            | Adyen.Checkout.V68.AlmaDetails.t()
            | Adyen.Checkout.V68.AmazonPayDetails.t()
            | Adyen.Checkout.V68.AncvDetails.t()
            | Adyen.Checkout.V68.AndroidPayDetails.t()
            | Adyen.Checkout.V68.ApplePayDetails.t()
            | Adyen.Checkout.V68.BacsDirectDebitDetails.t()
            | Adyen.Checkout.V68.BillDeskDetails.t()
            | Adyen.Checkout.V68.BlikDetails.t()
            | Adyen.Checkout.V68.CardDetails.t()
            | Adyen.Checkout.V68.CashAppDetails.t()
            | Adyen.Checkout.V68.CellulantDetails.t()
            | Adyen.Checkout.V68.DirectDebitAuDetails.t()
            | Adyen.Checkout.V68.DokuDetails.t()
            | Adyen.Checkout.V68.DragonpayDetails.t()
            | Adyen.Checkout.V68.EBankingFinlandDetails.t()
            | Adyen.Checkout.V68.EcontextVoucherDetails.t()
            | Adyen.Checkout.V68.EftDetails.t()
            | Adyen.Checkout.V68.ExternalTokenDetails.t()
            | Adyen.Checkout.V68.FastlaneDetails.t()
            | Adyen.Checkout.V68.GenericIssuerPaymentMethodDetails.t()
            | Adyen.Checkout.V68.GooglePayDetails.t()
            | Adyen.Checkout.V68.IdealDetails.t()
            | Adyen.Checkout.V68.KlarnaDetails.t()
            | Adyen.Checkout.V68.KlarnaNetworkDetails.t()
            | Adyen.Checkout.V68.MasterpassDetails.t()
            | Adyen.Checkout.V68.MbwayDetails.t()
            | Adyen.Checkout.V68.MobilePayDetails.t()
            | Adyen.Checkout.V68.MolPayDetails.t()
            | Adyen.Checkout.V68.OpenInvoiceDetails.t()
            | Adyen.Checkout.V68.PayByBankAISDirectDebitDetails.t()
            | Adyen.Checkout.V68.PayByBankDetails.t()
            | Adyen.Checkout.V68.PayPalDetails.t()
            | Adyen.Checkout.V68.PayPayDetails.t()
            | Adyen.Checkout.V68.PayToDetails.t()
            | Adyen.Checkout.V68.PayUUpiDetails.t()
            | Adyen.Checkout.V68.PayWithGoogleDetails.t()
            | Adyen.Checkout.V68.PaymentDetails.t()
            | Adyen.Checkout.V68.PixDetails.t()
            | Adyen.Checkout.V68.PixPayByBankDetails.t()
            | Adyen.Checkout.V68.PseDetails.t()
            | Adyen.Checkout.V68.RakutenPayDetails.t()
            | Adyen.Checkout.V68.RatepayDetails.t()
            | Adyen.Checkout.V68.RivertyDetails.t()
            | Adyen.Checkout.V68.SamsungPayDetails.t()
            | Adyen.Checkout.V68.SepaDirectDebitDetails.t()
            | Adyen.Checkout.V68.StoredPaymentMethodDetails.t()
            | Adyen.Checkout.V68.TwintDetails.t()
            | Adyen.Checkout.V68.UpiCollectDetails.t()
            | Adyen.Checkout.V68.UpiIntentDetails.t()
            | Adyen.Checkout.V68.UpiQrDetails.t()
            | Adyen.Checkout.V68.VippsDetails.t()
            | Adyen.Checkout.V68.VisaCheckoutDetails.t()
            | Adyen.Checkout.V68.WeChatPayDetails.t()
            | Adyen.Checkout.V68.WeChatPayMiniProgramDetails.t()
            | Adyen.Checkout.V68.ZipDetails.t(),
          platformChargebackLogic: Adyen.Checkout.V68.PlatformChargebackLogic.t() | nil,
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: Adyen.Checkout.V68.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Adyen.Checkout.V68.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          shopperTaxInfo: Adyen.Checkout.V68.ShopperTaxInfo.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [Adyen.Checkout.V68.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [Adyen.Checkout.V68.SubMerchantInfoWrapper.t()] | nil,
          surcharge: Adyen.Checkout.V68.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: Adyen.Checkout.V68.ThreeDs2RequestFields.t() | nil,
          threeDSAuthenticationOnly: boolean | nil,
          trustedShopper: boolean | nil
        }

  defstruct [
    :accountInfo,
    :additionalAmount,
    :additionalData,
    :amount,
    :applicationInfo,
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
      accountInfo: {Adyen.Checkout.V68.AccountInfo, :t},
      additionalAmount: {Adyen.Checkout.V68.Amount, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.V68.Amount, :t},
      applicationInfo: {Adyen.Checkout.V68.ApplicationInfo, :t},
      bankAccount: {Adyen.Checkout.V68.CheckoutBankAccount, :t},
      billingAddress: {Adyen.Checkout.V68.BillingAddress, :t},
      browserInfo: {Adyen.Checkout.V68.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {Adyen.Checkout.V68.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {Adyen.Checkout.V68.ForexQuote, :t},
      deliveryAddress: {Adyen.Checkout.V68.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {Adyen.Checkout.V68.FundOrigin, :t},
      fundRecipient: {Adyen.Checkout.V68.FundRecipient, :t},
      installments: {Adyen.Checkout.V68.Installments, :t},
      lineItems: [{Adyen.Checkout.V68.LineItem, :t}],
      localizedShopperStatement: :map,
      mandate: {Adyen.Checkout.V68.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {Adyen.Checkout.V68.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {Adyen.Checkout.V68.ThreeDSecureData, :t},
      order: {Adyen.Checkout.V68.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {Adyen.Checkout.V68.AchDetails, :t},
           {Adyen.Checkout.V68.AffirmDetails, :t},
           {Adyen.Checkout.V68.AfterpayDetails, :t},
           {Adyen.Checkout.V68.AlmaDetails, :t},
           {Adyen.Checkout.V68.AmazonPayDetails, :t},
           {Adyen.Checkout.V68.AncvDetails, :t},
           {Adyen.Checkout.V68.AndroidPayDetails, :t},
           {Adyen.Checkout.V68.ApplePayDetails, :t},
           {Adyen.Checkout.V68.BacsDirectDebitDetails, :t},
           {Adyen.Checkout.V68.BillDeskDetails, :t},
           {Adyen.Checkout.V68.BlikDetails, :t},
           {Adyen.Checkout.V68.CardDetails, :t},
           {Adyen.Checkout.V68.CashAppDetails, :t},
           {Adyen.Checkout.V68.CellulantDetails, :t},
           {Adyen.Checkout.V68.DirectDebitAuDetails, :t},
           {Adyen.Checkout.V68.DokuDetails, :t},
           {Adyen.Checkout.V68.DragonpayDetails, :t},
           {Adyen.Checkout.V68.EBankingFinlandDetails, :t},
           {Adyen.Checkout.V68.EcontextVoucherDetails, :t},
           {Adyen.Checkout.V68.EftDetails, :t},
           {Adyen.Checkout.V68.ExternalTokenDetails, :t},
           {Adyen.Checkout.V68.FastlaneDetails, :t},
           {Adyen.Checkout.V68.GenericIssuerPaymentMethodDetails, :t},
           {Adyen.Checkout.V68.GooglePayDetails, :t},
           {Adyen.Checkout.V68.IdealDetails, :t},
           {Adyen.Checkout.V68.KlarnaDetails, :t},
           {Adyen.Checkout.V68.KlarnaNetworkDetails, :t},
           {Adyen.Checkout.V68.MasterpassDetails, :t},
           {Adyen.Checkout.V68.MbwayDetails, :t},
           {Adyen.Checkout.V68.MobilePayDetails, :t},
           {Adyen.Checkout.V68.MolPayDetails, :t},
           {Adyen.Checkout.V68.OpenInvoiceDetails, :t},
           {Adyen.Checkout.V68.PayByBankAISDirectDebitDetails, :t},
           {Adyen.Checkout.V68.PayByBankDetails, :t},
           {Adyen.Checkout.V68.PayPalDetails, :t},
           {Adyen.Checkout.V68.PayPayDetails, :t},
           {Adyen.Checkout.V68.PayToDetails, :t},
           {Adyen.Checkout.V68.PayUUpiDetails, :t},
           {Adyen.Checkout.V68.PayWithGoogleDetails, :t},
           {Adyen.Checkout.V68.PaymentDetails, :t},
           {Adyen.Checkout.V68.PixDetails, :t},
           {Adyen.Checkout.V68.PixPayByBankDetails, :t},
           {Adyen.Checkout.V68.PseDetails, :t},
           {Adyen.Checkout.V68.RakutenPayDetails, :t},
           {Adyen.Checkout.V68.RatepayDetails, :t},
           {Adyen.Checkout.V68.RivertyDetails, :t},
           {Adyen.Checkout.V68.SamsungPayDetails, :t},
           {Adyen.Checkout.V68.SepaDirectDebitDetails, :t},
           {Adyen.Checkout.V68.StoredPaymentMethodDetails, :t},
           {Adyen.Checkout.V68.TwintDetails, :t},
           {Adyen.Checkout.V68.UpiCollectDetails, :t},
           {Adyen.Checkout.V68.UpiIntentDetails, :t},
           {Adyen.Checkout.V68.UpiQrDetails, :t},
           {Adyen.Checkout.V68.VippsDetails, :t},
           {Adyen.Checkout.V68.VisaCheckoutDetails, :t},
           {Adyen.Checkout.V68.WeChatPayDetails, :t},
           {Adyen.Checkout.V68.WeChatPayMiniProgramDetails, :t},
           {Adyen.Checkout.V68.ZipDetails, :t}
         ]},
      platformChargebackLogic: {Adyen.Checkout.V68.PlatformChargebackLogic, :t},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {Adyen.Checkout.V68.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {Adyen.Checkout.V68.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      shopperTaxInfo: {Adyen.Checkout.V68.ShopperTaxInfo, :t},
      socialSecurityNumber: :string,
      splits: [{Adyen.Checkout.V68.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{Adyen.Checkout.V68.SubMerchantInfoWrapper, :t}],
      surcharge: {Adyen.Checkout.V68.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {Adyen.Checkout.V68.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
