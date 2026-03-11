defmodule Adyen.Checkout.V53.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: Adyen.Checkout.V53.AccountInfo.t() | nil,
          additionalAmount: Adyen.Checkout.V53.Amount.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V53.Amount.t(),
          applicationInfo: Adyen.Checkout.V53.ApplicationInfo.t() | nil,
          bankAccount: Adyen.Checkout.V53.CheckoutBankAccount.t() | nil,
          billingAddress: Adyen.Checkout.V53.BillingAddress.t() | nil,
          browserInfo: Adyen.Checkout.V53.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: Adyen.Checkout.V53.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: Adyen.Checkout.V53.ForexQuote.t() | nil,
          deliveryAddress: Adyen.Checkout.V53.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRealTimeUpdate: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: Adyen.Checkout.V53.FundOrigin.t() | nil,
          fundRecipient: Adyen.Checkout.V53.FundRecipient.t() | nil,
          installments: Adyen.Checkout.V53.Installments.t() | nil,
          lineItems: [Adyen.Checkout.V53.LineItem.t()] | nil,
          mandate: Adyen.Checkout.V53.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: Adyen.Checkout.V53.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: Adyen.Checkout.V53.ThreeDSecureData.t() | nil,
          order: Adyen.Checkout.V53.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            Adyen.Checkout.V53.AchDetails.t()
            | Adyen.Checkout.V53.AffirmDetails.t()
            | Adyen.Checkout.V53.AfterpayDetails.t()
            | Adyen.Checkout.V53.AmazonPayDetails.t()
            | Adyen.Checkout.V53.AncvDetails.t()
            | Adyen.Checkout.V53.AndroidPayDetails.t()
            | Adyen.Checkout.V53.ApplePayDetails.t()
            | Adyen.Checkout.V53.BacsDirectDebitDetails.t()
            | Adyen.Checkout.V53.BillDeskDetails.t()
            | Adyen.Checkout.V53.BlikDetails.t()
            | Adyen.Checkout.V53.CardDetails.t()
            | Adyen.Checkout.V53.CashAppDetails.t()
            | Adyen.Checkout.V53.CellulantDetails.t()
            | Adyen.Checkout.V53.DokuDetails.t()
            | Adyen.Checkout.V53.DragonpayDetails.t()
            | Adyen.Checkout.V53.EBankingFinlandDetails.t()
            | Adyen.Checkout.V53.EcontextVoucherDetails.t()
            | Adyen.Checkout.V53.EftDetails.t()
            | Adyen.Checkout.V53.ExternalTokenDetails.t()
            | Adyen.Checkout.V53.FastlaneDetails.t()
            | Adyen.Checkout.V53.GenericIssuerPaymentMethodDetails.t()
            | Adyen.Checkout.V53.GooglePayDetails.t()
            | Adyen.Checkout.V53.IdealDetails.t()
            | Adyen.Checkout.V53.KlarnaDetails.t()
            | Adyen.Checkout.V53.MasterpassDetails.t()
            | Adyen.Checkout.V53.MbwayDetails.t()
            | Adyen.Checkout.V53.MobilePayDetails.t()
            | Adyen.Checkout.V53.MolPayDetails.t()
            | Adyen.Checkout.V53.OpenInvoiceDetails.t()
            | Adyen.Checkout.V53.PayByBankAISDirectDebitDetails.t()
            | Adyen.Checkout.V53.PayByBankDetails.t()
            | Adyen.Checkout.V53.PayPalDetails.t()
            | Adyen.Checkout.V53.PayPayDetails.t()
            | Adyen.Checkout.V53.PayToDetails.t()
            | Adyen.Checkout.V53.PayUUpiDetails.t()
            | Adyen.Checkout.V53.PayWithGoogleDetails.t()
            | Adyen.Checkout.V53.PaymentDetails.t()
            | Adyen.Checkout.V53.PixDetails.t()
            | Adyen.Checkout.V53.PseDetails.t()
            | Adyen.Checkout.V53.RakutenPayDetails.t()
            | Adyen.Checkout.V53.RatepayDetails.t()
            | Adyen.Checkout.V53.RivertyDetails.t()
            | Adyen.Checkout.V53.SamsungPayDetails.t()
            | Adyen.Checkout.V53.SepaDirectDebitDetails.t()
            | Adyen.Checkout.V53.StoredPaymentMethodDetails.t()
            | Adyen.Checkout.V53.TwintDetails.t()
            | Adyen.Checkout.V53.UpiCollectDetails.t()
            | Adyen.Checkout.V53.UpiIntentDetails.t()
            | Adyen.Checkout.V53.UpiQrDetails.t()
            | Adyen.Checkout.V53.VippsDetails.t()
            | Adyen.Checkout.V53.VisaCheckoutDetails.t()
            | Adyen.Checkout.V53.WeChatPayDetails.t()
            | Adyen.Checkout.V53.WeChatPayMiniProgramDetails.t()
            | Adyen.Checkout.V53.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: Adyen.Checkout.V53.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Adyen.Checkout.V53.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [Adyen.Checkout.V53.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [Adyen.Checkout.V53.SubMerchantInfoWrapper.t()] | nil,
          surcharge: Adyen.Checkout.V53.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: Adyen.Checkout.V53.ThreeDs2RequestFields.t() | nil,
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
      accountInfo: {Adyen.Checkout.V53.AccountInfo, :t},
      additionalAmount: {Adyen.Checkout.V53.Amount, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.V53.Amount, :t},
      applicationInfo: {Adyen.Checkout.V53.ApplicationInfo, :t},
      bankAccount: {Adyen.Checkout.V53.CheckoutBankAccount, :t},
      billingAddress: {Adyen.Checkout.V53.BillingAddress, :t},
      browserInfo: {Adyen.Checkout.V53.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {Adyen.Checkout.V53.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {Adyen.Checkout.V53.ForexQuote, :t},
      deliveryAddress: {Adyen.Checkout.V53.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRealTimeUpdate: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {Adyen.Checkout.V53.FundOrigin, :t},
      fundRecipient: {Adyen.Checkout.V53.FundRecipient, :t},
      installments: {Adyen.Checkout.V53.Installments, :t},
      lineItems: [{Adyen.Checkout.V53.LineItem, :t}],
      mandate: {Adyen.Checkout.V53.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {Adyen.Checkout.V53.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {Adyen.Checkout.V53.ThreeDSecureData, :t},
      order: {Adyen.Checkout.V53.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {Adyen.Checkout.V53.AchDetails, :t},
           {Adyen.Checkout.V53.AffirmDetails, :t},
           {Adyen.Checkout.V53.AfterpayDetails, :t},
           {Adyen.Checkout.V53.AmazonPayDetails, :t},
           {Adyen.Checkout.V53.AncvDetails, :t},
           {Adyen.Checkout.V53.AndroidPayDetails, :t},
           {Adyen.Checkout.V53.ApplePayDetails, :t},
           {Adyen.Checkout.V53.BacsDirectDebitDetails, :t},
           {Adyen.Checkout.V53.BillDeskDetails, :t},
           {Adyen.Checkout.V53.BlikDetails, :t},
           {Adyen.Checkout.V53.CardDetails, :t},
           {Adyen.Checkout.V53.CashAppDetails, :t},
           {Adyen.Checkout.V53.CellulantDetails, :t},
           {Adyen.Checkout.V53.DokuDetails, :t},
           {Adyen.Checkout.V53.DragonpayDetails, :t},
           {Adyen.Checkout.V53.EBankingFinlandDetails, :t},
           {Adyen.Checkout.V53.EcontextVoucherDetails, :t},
           {Adyen.Checkout.V53.EftDetails, :t},
           {Adyen.Checkout.V53.ExternalTokenDetails, :t},
           {Adyen.Checkout.V53.FastlaneDetails, :t},
           {Adyen.Checkout.V53.GenericIssuerPaymentMethodDetails, :t},
           {Adyen.Checkout.V53.GooglePayDetails, :t},
           {Adyen.Checkout.V53.IdealDetails, :t},
           {Adyen.Checkout.V53.KlarnaDetails, :t},
           {Adyen.Checkout.V53.MasterpassDetails, :t},
           {Adyen.Checkout.V53.MbwayDetails, :t},
           {Adyen.Checkout.V53.MobilePayDetails, :t},
           {Adyen.Checkout.V53.MolPayDetails, :t},
           {Adyen.Checkout.V53.OpenInvoiceDetails, :t},
           {Adyen.Checkout.V53.PayByBankAISDirectDebitDetails, :t},
           {Adyen.Checkout.V53.PayByBankDetails, :t},
           {Adyen.Checkout.V53.PayPalDetails, :t},
           {Adyen.Checkout.V53.PayPayDetails, :t},
           {Adyen.Checkout.V53.PayToDetails, :t},
           {Adyen.Checkout.V53.PayUUpiDetails, :t},
           {Adyen.Checkout.V53.PayWithGoogleDetails, :t},
           {Adyen.Checkout.V53.PaymentDetails, :t},
           {Adyen.Checkout.V53.PixDetails, :t},
           {Adyen.Checkout.V53.PseDetails, :t},
           {Adyen.Checkout.V53.RakutenPayDetails, :t},
           {Adyen.Checkout.V53.RatepayDetails, :t},
           {Adyen.Checkout.V53.RivertyDetails, :t},
           {Adyen.Checkout.V53.SamsungPayDetails, :t},
           {Adyen.Checkout.V53.SepaDirectDebitDetails, :t},
           {Adyen.Checkout.V53.StoredPaymentMethodDetails, :t},
           {Adyen.Checkout.V53.TwintDetails, :t},
           {Adyen.Checkout.V53.UpiCollectDetails, :t},
           {Adyen.Checkout.V53.UpiIntentDetails, :t},
           {Adyen.Checkout.V53.UpiQrDetails, :t},
           {Adyen.Checkout.V53.VippsDetails, :t},
           {Adyen.Checkout.V53.VisaCheckoutDetails, :t},
           {Adyen.Checkout.V53.WeChatPayDetails, :t},
           {Adyen.Checkout.V53.WeChatPayMiniProgramDetails, :t},
           {Adyen.Checkout.V53.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {Adyen.Checkout.V53.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {Adyen.Checkout.V53.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{Adyen.Checkout.V53.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{Adyen.Checkout.V53.SubMerchantInfoWrapper, :t}],
      surcharge: {Adyen.Checkout.V53.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {Adyen.Checkout.V53.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
