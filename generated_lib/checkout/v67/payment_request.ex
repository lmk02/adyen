defmodule Adyen.Checkout.V67.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: Adyen.Checkout.V67.AccountInfo.t() | nil,
          additionalAmount: Adyen.Checkout.V67.Amount.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V67.Amount.t(),
          applicationInfo: Adyen.Checkout.V67.ApplicationInfo.t() | nil,
          bankAccount: Adyen.Checkout.V67.CheckoutBankAccount.t() | nil,
          billingAddress: Adyen.Checkout.V67.BillingAddress.t() | nil,
          browserInfo: Adyen.Checkout.V67.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: Adyen.Checkout.V67.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: Adyen.Checkout.V67.ForexQuote.t() | nil,
          deliveryAddress: Adyen.Checkout.V67.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: Adyen.Checkout.V67.FundOrigin.t() | nil,
          fundRecipient: Adyen.Checkout.V67.FundRecipient.t() | nil,
          installments: Adyen.Checkout.V67.Installments.t() | nil,
          lineItems: [Adyen.Checkout.V67.LineItem.t()] | nil,
          mandate: Adyen.Checkout.V67.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: Adyen.Checkout.V67.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: Adyen.Checkout.V67.ThreeDSecureData.t() | nil,
          order: Adyen.Checkout.V67.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            Adyen.Checkout.V67.AchDetails.t()
            | Adyen.Checkout.V67.AffirmDetails.t()
            | Adyen.Checkout.V67.AfterpayDetails.t()
            | Adyen.Checkout.V67.AlmaDetails.t()
            | Adyen.Checkout.V67.AmazonPayDetails.t()
            | Adyen.Checkout.V67.AncvDetails.t()
            | Adyen.Checkout.V67.AndroidPayDetails.t()
            | Adyen.Checkout.V67.ApplePayDetails.t()
            | Adyen.Checkout.V67.BacsDirectDebitDetails.t()
            | Adyen.Checkout.V67.BillDeskDetails.t()
            | Adyen.Checkout.V67.BlikDetails.t()
            | Adyen.Checkout.V67.CardDetails.t()
            | Adyen.Checkout.V67.CashAppDetails.t()
            | Adyen.Checkout.V67.CellulantDetails.t()
            | Adyen.Checkout.V67.DirectDebitAuDetails.t()
            | Adyen.Checkout.V67.DokuDetails.t()
            | Adyen.Checkout.V67.DragonpayDetails.t()
            | Adyen.Checkout.V67.EBankingFinlandDetails.t()
            | Adyen.Checkout.V67.EcontextVoucherDetails.t()
            | Adyen.Checkout.V67.EftDetails.t()
            | Adyen.Checkout.V67.ExternalTokenDetails.t()
            | Adyen.Checkout.V67.FastlaneDetails.t()
            | Adyen.Checkout.V67.GenericIssuerPaymentMethodDetails.t()
            | Adyen.Checkout.V67.GooglePayDetails.t()
            | Adyen.Checkout.V67.IdealDetails.t()
            | Adyen.Checkout.V67.KlarnaDetails.t()
            | Adyen.Checkout.V67.KlarnaNetworkDetails.t()
            | Adyen.Checkout.V67.MasterpassDetails.t()
            | Adyen.Checkout.V67.MbwayDetails.t()
            | Adyen.Checkout.V67.MobilePayDetails.t()
            | Adyen.Checkout.V67.MolPayDetails.t()
            | Adyen.Checkout.V67.OpenInvoiceDetails.t()
            | Adyen.Checkout.V67.PayByBankAISDirectDebitDetails.t()
            | Adyen.Checkout.V67.PayByBankDetails.t()
            | Adyen.Checkout.V67.PayPalDetails.t()
            | Adyen.Checkout.V67.PayPayDetails.t()
            | Adyen.Checkout.V67.PayToDetails.t()
            | Adyen.Checkout.V67.PayUUpiDetails.t()
            | Adyen.Checkout.V67.PayWithGoogleDetails.t()
            | Adyen.Checkout.V67.PaymentDetails.t()
            | Adyen.Checkout.V67.PixDetails.t()
            | Adyen.Checkout.V67.PixPayByBankDetails.t()
            | Adyen.Checkout.V67.PseDetails.t()
            | Adyen.Checkout.V67.RakutenPayDetails.t()
            | Adyen.Checkout.V67.RatepayDetails.t()
            | Adyen.Checkout.V67.RivertyDetails.t()
            | Adyen.Checkout.V67.SamsungPayDetails.t()
            | Adyen.Checkout.V67.SepaDirectDebitDetails.t()
            | Adyen.Checkout.V67.StoredPaymentMethodDetails.t()
            | Adyen.Checkout.V67.TwintDetails.t()
            | Adyen.Checkout.V67.UpiCollectDetails.t()
            | Adyen.Checkout.V67.UpiIntentDetails.t()
            | Adyen.Checkout.V67.UpiQrDetails.t()
            | Adyen.Checkout.V67.VippsDetails.t()
            | Adyen.Checkout.V67.VisaCheckoutDetails.t()
            | Adyen.Checkout.V67.WeChatPayDetails.t()
            | Adyen.Checkout.V67.WeChatPayMiniProgramDetails.t()
            | Adyen.Checkout.V67.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: Adyen.Checkout.V67.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Adyen.Checkout.V67.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [Adyen.Checkout.V67.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [Adyen.Checkout.V67.SubMerchantInfoWrapper.t()] | nil,
          surcharge: Adyen.Checkout.V67.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: Adyen.Checkout.V67.ThreeDs2RequestFields.t() | nil,
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
      accountInfo: {Adyen.Checkout.V67.AccountInfo, :t},
      additionalAmount: {Adyen.Checkout.V67.Amount, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.V67.Amount, :t},
      applicationInfo: {Adyen.Checkout.V67.ApplicationInfo, :t},
      bankAccount: {Adyen.Checkout.V67.CheckoutBankAccount, :t},
      billingAddress: {Adyen.Checkout.V67.BillingAddress, :t},
      browserInfo: {Adyen.Checkout.V67.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {Adyen.Checkout.V67.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {Adyen.Checkout.V67.ForexQuote, :t},
      deliveryAddress: {Adyen.Checkout.V67.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {Adyen.Checkout.V67.FundOrigin, :t},
      fundRecipient: {Adyen.Checkout.V67.FundRecipient, :t},
      installments: {Adyen.Checkout.V67.Installments, :t},
      lineItems: [{Adyen.Checkout.V67.LineItem, :t}],
      mandate: {Adyen.Checkout.V67.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {Adyen.Checkout.V67.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {Adyen.Checkout.V67.ThreeDSecureData, :t},
      order: {Adyen.Checkout.V67.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {Adyen.Checkout.V67.AchDetails, :t},
           {Adyen.Checkout.V67.AffirmDetails, :t},
           {Adyen.Checkout.V67.AfterpayDetails, :t},
           {Adyen.Checkout.V67.AlmaDetails, :t},
           {Adyen.Checkout.V67.AmazonPayDetails, :t},
           {Adyen.Checkout.V67.AncvDetails, :t},
           {Adyen.Checkout.V67.AndroidPayDetails, :t},
           {Adyen.Checkout.V67.ApplePayDetails, :t},
           {Adyen.Checkout.V67.BacsDirectDebitDetails, :t},
           {Adyen.Checkout.V67.BillDeskDetails, :t},
           {Adyen.Checkout.V67.BlikDetails, :t},
           {Adyen.Checkout.V67.CardDetails, :t},
           {Adyen.Checkout.V67.CashAppDetails, :t},
           {Adyen.Checkout.V67.CellulantDetails, :t},
           {Adyen.Checkout.V67.DirectDebitAuDetails, :t},
           {Adyen.Checkout.V67.DokuDetails, :t},
           {Adyen.Checkout.V67.DragonpayDetails, :t},
           {Adyen.Checkout.V67.EBankingFinlandDetails, :t},
           {Adyen.Checkout.V67.EcontextVoucherDetails, :t},
           {Adyen.Checkout.V67.EftDetails, :t},
           {Adyen.Checkout.V67.ExternalTokenDetails, :t},
           {Adyen.Checkout.V67.FastlaneDetails, :t},
           {Adyen.Checkout.V67.GenericIssuerPaymentMethodDetails, :t},
           {Adyen.Checkout.V67.GooglePayDetails, :t},
           {Adyen.Checkout.V67.IdealDetails, :t},
           {Adyen.Checkout.V67.KlarnaDetails, :t},
           {Adyen.Checkout.V67.KlarnaNetworkDetails, :t},
           {Adyen.Checkout.V67.MasterpassDetails, :t},
           {Adyen.Checkout.V67.MbwayDetails, :t},
           {Adyen.Checkout.V67.MobilePayDetails, :t},
           {Adyen.Checkout.V67.MolPayDetails, :t},
           {Adyen.Checkout.V67.OpenInvoiceDetails, :t},
           {Adyen.Checkout.V67.PayByBankAISDirectDebitDetails, :t},
           {Adyen.Checkout.V67.PayByBankDetails, :t},
           {Adyen.Checkout.V67.PayPalDetails, :t},
           {Adyen.Checkout.V67.PayPayDetails, :t},
           {Adyen.Checkout.V67.PayToDetails, :t},
           {Adyen.Checkout.V67.PayUUpiDetails, :t},
           {Adyen.Checkout.V67.PayWithGoogleDetails, :t},
           {Adyen.Checkout.V67.PaymentDetails, :t},
           {Adyen.Checkout.V67.PixDetails, :t},
           {Adyen.Checkout.V67.PixPayByBankDetails, :t},
           {Adyen.Checkout.V67.PseDetails, :t},
           {Adyen.Checkout.V67.RakutenPayDetails, :t},
           {Adyen.Checkout.V67.RatepayDetails, :t},
           {Adyen.Checkout.V67.RivertyDetails, :t},
           {Adyen.Checkout.V67.SamsungPayDetails, :t},
           {Adyen.Checkout.V67.SepaDirectDebitDetails, :t},
           {Adyen.Checkout.V67.StoredPaymentMethodDetails, :t},
           {Adyen.Checkout.V67.TwintDetails, :t},
           {Adyen.Checkout.V67.UpiCollectDetails, :t},
           {Adyen.Checkout.V67.UpiIntentDetails, :t},
           {Adyen.Checkout.V67.UpiQrDetails, :t},
           {Adyen.Checkout.V67.VippsDetails, :t},
           {Adyen.Checkout.V67.VisaCheckoutDetails, :t},
           {Adyen.Checkout.V67.WeChatPayDetails, :t},
           {Adyen.Checkout.V67.WeChatPayMiniProgramDetails, :t},
           {Adyen.Checkout.V67.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {Adyen.Checkout.V67.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {Adyen.Checkout.V67.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{Adyen.Checkout.V67.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{Adyen.Checkout.V67.SubMerchantInfoWrapper, :t}],
      surcharge: {Adyen.Checkout.V67.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {Adyen.Checkout.V67.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
