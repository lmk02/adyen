defmodule Adyen.Checkout.V51.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: Adyen.Checkout.V51.AccountInfo.t() | nil,
          additionalAmount: Adyen.Checkout.V51.Amount.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V51.Amount.t(),
          applicationInfo: Adyen.Checkout.V51.ApplicationInfo.t() | nil,
          bankAccount: Adyen.Checkout.V51.CheckoutBankAccount.t() | nil,
          billingAddress: Adyen.Checkout.V51.BillingAddress.t() | nil,
          browserInfo: Adyen.Checkout.V51.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: Adyen.Checkout.V51.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: Adyen.Checkout.V51.ForexQuote.t() | nil,
          deliveryAddress: Adyen.Checkout.V51.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRealTimeUpdate: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: Adyen.Checkout.V51.FundOrigin.t() | nil,
          fundRecipient: Adyen.Checkout.V51.FundRecipient.t() | nil,
          installments: Adyen.Checkout.V51.Installments.t() | nil,
          lineItems: [Adyen.Checkout.V51.LineItem.t()] | nil,
          mandate: Adyen.Checkout.V51.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: Adyen.Checkout.V51.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: Adyen.Checkout.V51.ThreeDSecureData.t() | nil,
          order: Adyen.Checkout.V51.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            Adyen.Checkout.V51.AchDetails.t()
            | Adyen.Checkout.V51.AffirmDetails.t()
            | Adyen.Checkout.V51.AfterpayDetails.t()
            | Adyen.Checkout.V51.AlmaDetails.t()
            | Adyen.Checkout.V51.AmazonPayDetails.t()
            | Adyen.Checkout.V51.AncvDetails.t()
            | Adyen.Checkout.V51.AndroidPayDetails.t()
            | Adyen.Checkout.V51.ApplePayDetails.t()
            | Adyen.Checkout.V51.BacsDirectDebitDetails.t()
            | Adyen.Checkout.V51.BillDeskDetails.t()
            | Adyen.Checkout.V51.BlikDetails.t()
            | Adyen.Checkout.V51.CardDetails.t()
            | Adyen.Checkout.V51.CashAppDetails.t()
            | Adyen.Checkout.V51.CellulantDetails.t()
            | Adyen.Checkout.V51.DirectDebitAuDetails.t()
            | Adyen.Checkout.V51.DokuDetails.t()
            | Adyen.Checkout.V51.DragonpayDetails.t()
            | Adyen.Checkout.V51.EBankingFinlandDetails.t()
            | Adyen.Checkout.V51.EcontextVoucherDetails.t()
            | Adyen.Checkout.V51.EftDetails.t()
            | Adyen.Checkout.V51.ExternalTokenDetails.t()
            | Adyen.Checkout.V51.FastlaneDetails.t()
            | Adyen.Checkout.V51.GenericIssuerPaymentMethodDetails.t()
            | Adyen.Checkout.V51.GooglePayDetails.t()
            | Adyen.Checkout.V51.IdealDetails.t()
            | Adyen.Checkout.V51.KlarnaDetails.t()
            | Adyen.Checkout.V51.KlarnaNetworkDetails.t()
            | Adyen.Checkout.V51.MasterpassDetails.t()
            | Adyen.Checkout.V51.MbwayDetails.t()
            | Adyen.Checkout.V51.MobilePayDetails.t()
            | Adyen.Checkout.V51.MolPayDetails.t()
            | Adyen.Checkout.V51.OpenInvoiceDetails.t()
            | Adyen.Checkout.V51.PayByBankAISDirectDebitDetails.t()
            | Adyen.Checkout.V51.PayByBankDetails.t()
            | Adyen.Checkout.V51.PayPalDetails.t()
            | Adyen.Checkout.V51.PayPayDetails.t()
            | Adyen.Checkout.V51.PayToDetails.t()
            | Adyen.Checkout.V51.PayUUpiDetails.t()
            | Adyen.Checkout.V51.PayWithGoogleDetails.t()
            | Adyen.Checkout.V51.PaymentDetails.t()
            | Adyen.Checkout.V51.PixDetails.t()
            | Adyen.Checkout.V51.PixPayByBankDetails.t()
            | Adyen.Checkout.V51.PseDetails.t()
            | Adyen.Checkout.V51.RakutenPayDetails.t()
            | Adyen.Checkout.V51.RatepayDetails.t()
            | Adyen.Checkout.V51.RivertyDetails.t()
            | Adyen.Checkout.V51.SamsungPayDetails.t()
            | Adyen.Checkout.V51.SepaDirectDebitDetails.t()
            | Adyen.Checkout.V51.StoredPaymentMethodDetails.t()
            | Adyen.Checkout.V51.TwintDetails.t()
            | Adyen.Checkout.V51.UpiCollectDetails.t()
            | Adyen.Checkout.V51.UpiIntentDetails.t()
            | Adyen.Checkout.V51.UpiQrDetails.t()
            | Adyen.Checkout.V51.VippsDetails.t()
            | Adyen.Checkout.V51.VisaCheckoutDetails.t()
            | Adyen.Checkout.V51.WeChatPayDetails.t()
            | Adyen.Checkout.V51.WeChatPayMiniProgramDetails.t()
            | Adyen.Checkout.V51.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: Adyen.Checkout.V51.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Adyen.Checkout.V51.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [Adyen.Checkout.V51.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [Adyen.Checkout.V51.SubMerchantInfoWrapper.t()] | nil,
          surcharge: Adyen.Checkout.V51.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: Adyen.Checkout.V51.ThreeDs2RequestFields.t() | nil,
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
    :enableRealTimeUpdate,
    :enableRecurring,
    :entityType,
    :fraudOffset,
    :fundOrigin,
    :fundRecipient,
    :installments,
    :lineItems,
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
      accountInfo: {Adyen.Checkout.V51.AccountInfo, :t},
      additionalAmount: {Adyen.Checkout.V51.Amount, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.V51.Amount, :t},
      applicationInfo: {Adyen.Checkout.V51.ApplicationInfo, :t},
      bankAccount: {Adyen.Checkout.V51.CheckoutBankAccount, :t},
      billingAddress: {Adyen.Checkout.V51.BillingAddress, :t},
      browserInfo: {Adyen.Checkout.V51.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {Adyen.Checkout.V51.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {Adyen.Checkout.V51.ForexQuote, :t},
      deliveryAddress: {Adyen.Checkout.V51.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRealTimeUpdate: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {Adyen.Checkout.V51.FundOrigin, :t},
      fundRecipient: {Adyen.Checkout.V51.FundRecipient, :t},
      installments: {Adyen.Checkout.V51.Installments, :t},
      lineItems: [{Adyen.Checkout.V51.LineItem, :t}],
      mandate: {Adyen.Checkout.V51.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {Adyen.Checkout.V51.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {Adyen.Checkout.V51.ThreeDSecureData, :t},
      order: {Adyen.Checkout.V51.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {Adyen.Checkout.V51.AchDetails, :t},
           {Adyen.Checkout.V51.AffirmDetails, :t},
           {Adyen.Checkout.V51.AfterpayDetails, :t},
           {Adyen.Checkout.V51.AlmaDetails, :t},
           {Adyen.Checkout.V51.AmazonPayDetails, :t},
           {Adyen.Checkout.V51.AncvDetails, :t},
           {Adyen.Checkout.V51.AndroidPayDetails, :t},
           {Adyen.Checkout.V51.ApplePayDetails, :t},
           {Adyen.Checkout.V51.BacsDirectDebitDetails, :t},
           {Adyen.Checkout.V51.BillDeskDetails, :t},
           {Adyen.Checkout.V51.BlikDetails, :t},
           {Adyen.Checkout.V51.CardDetails, :t},
           {Adyen.Checkout.V51.CashAppDetails, :t},
           {Adyen.Checkout.V51.CellulantDetails, :t},
           {Adyen.Checkout.V51.DirectDebitAuDetails, :t},
           {Adyen.Checkout.V51.DokuDetails, :t},
           {Adyen.Checkout.V51.DragonpayDetails, :t},
           {Adyen.Checkout.V51.EBankingFinlandDetails, :t},
           {Adyen.Checkout.V51.EcontextVoucherDetails, :t},
           {Adyen.Checkout.V51.EftDetails, :t},
           {Adyen.Checkout.V51.ExternalTokenDetails, :t},
           {Adyen.Checkout.V51.FastlaneDetails, :t},
           {Adyen.Checkout.V51.GenericIssuerPaymentMethodDetails, :t},
           {Adyen.Checkout.V51.GooglePayDetails, :t},
           {Adyen.Checkout.V51.IdealDetails, :t},
           {Adyen.Checkout.V51.KlarnaDetails, :t},
           {Adyen.Checkout.V51.KlarnaNetworkDetails, :t},
           {Adyen.Checkout.V51.MasterpassDetails, :t},
           {Adyen.Checkout.V51.MbwayDetails, :t},
           {Adyen.Checkout.V51.MobilePayDetails, :t},
           {Adyen.Checkout.V51.MolPayDetails, :t},
           {Adyen.Checkout.V51.OpenInvoiceDetails, :t},
           {Adyen.Checkout.V51.PayByBankAISDirectDebitDetails, :t},
           {Adyen.Checkout.V51.PayByBankDetails, :t},
           {Adyen.Checkout.V51.PayPalDetails, :t},
           {Adyen.Checkout.V51.PayPayDetails, :t},
           {Adyen.Checkout.V51.PayToDetails, :t},
           {Adyen.Checkout.V51.PayUUpiDetails, :t},
           {Adyen.Checkout.V51.PayWithGoogleDetails, :t},
           {Adyen.Checkout.V51.PaymentDetails, :t},
           {Adyen.Checkout.V51.PixDetails, :t},
           {Adyen.Checkout.V51.PixPayByBankDetails, :t},
           {Adyen.Checkout.V51.PseDetails, :t},
           {Adyen.Checkout.V51.RakutenPayDetails, :t},
           {Adyen.Checkout.V51.RatepayDetails, :t},
           {Adyen.Checkout.V51.RivertyDetails, :t},
           {Adyen.Checkout.V51.SamsungPayDetails, :t},
           {Adyen.Checkout.V51.SepaDirectDebitDetails, :t},
           {Adyen.Checkout.V51.StoredPaymentMethodDetails, :t},
           {Adyen.Checkout.V51.TwintDetails, :t},
           {Adyen.Checkout.V51.UpiCollectDetails, :t},
           {Adyen.Checkout.V51.UpiIntentDetails, :t},
           {Adyen.Checkout.V51.UpiQrDetails, :t},
           {Adyen.Checkout.V51.VippsDetails, :t},
           {Adyen.Checkout.V51.VisaCheckoutDetails, :t},
           {Adyen.Checkout.V51.WeChatPayDetails, :t},
           {Adyen.Checkout.V51.WeChatPayMiniProgramDetails, :t},
           {Adyen.Checkout.V51.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {Adyen.Checkout.V51.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {Adyen.Checkout.V51.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{Adyen.Checkout.V51.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{Adyen.Checkout.V51.SubMerchantInfoWrapper, :t}],
      surcharge: {Adyen.Checkout.V51.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {Adyen.Checkout.V51.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
