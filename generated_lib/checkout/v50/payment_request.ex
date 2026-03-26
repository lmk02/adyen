defmodule Adyen.Checkout.V50.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: Adyen.Checkout.V50.AccountInfo.t() | nil,
          additionalAmount: Adyen.Checkout.V50.Amount.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V50.Amount.t(),
          applicationInfo: Adyen.Checkout.V50.ApplicationInfo.t() | nil,
          bankAccount: Adyen.Checkout.V50.CheckoutBankAccount.t() | nil,
          billingAddress: Adyen.Checkout.V50.BillingAddress.t() | nil,
          browserInfo: Adyen.Checkout.V50.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: Adyen.Checkout.V50.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: Adyen.Checkout.V50.ForexQuote.t() | nil,
          deliveryAddress: Adyen.Checkout.V50.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: Adyen.Checkout.V50.FundOrigin.t() | nil,
          fundRecipient: Adyen.Checkout.V50.FundRecipient.t() | nil,
          installments: Adyen.Checkout.V50.Installments.t() | nil,
          lineItems: [Adyen.Checkout.V50.LineItem.t()] | nil,
          mandate: Adyen.Checkout.V50.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: Adyen.Checkout.V50.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: Adyen.Checkout.V50.ThreeDSecureData.t() | nil,
          order: Adyen.Checkout.V50.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            Adyen.Checkout.V50.AchDetails.t()
            | Adyen.Checkout.V50.AffirmDetails.t()
            | Adyen.Checkout.V50.AfterpayDetails.t()
            | Adyen.Checkout.V50.AlmaDetails.t()
            | Adyen.Checkout.V50.AmazonPayDetails.t()
            | Adyen.Checkout.V50.AncvDetails.t()
            | Adyen.Checkout.V50.AndroidPayDetails.t()
            | Adyen.Checkout.V50.ApplePayDetails.t()
            | Adyen.Checkout.V50.BacsDirectDebitDetails.t()
            | Adyen.Checkout.V50.BillDeskDetails.t()
            | Adyen.Checkout.V50.BlikDetails.t()
            | Adyen.Checkout.V50.CardDetails.t()
            | Adyen.Checkout.V50.CashAppDetails.t()
            | Adyen.Checkout.V50.CellulantDetails.t()
            | Adyen.Checkout.V50.DirectDebitAuDetails.t()
            | Adyen.Checkout.V50.DokuDetails.t()
            | Adyen.Checkout.V50.DragonpayDetails.t()
            | Adyen.Checkout.V50.EBankingFinlandDetails.t()
            | Adyen.Checkout.V50.EcontextVoucherDetails.t()
            | Adyen.Checkout.V50.EftDetails.t()
            | Adyen.Checkout.V50.ExternalTokenDetails.t()
            | Adyen.Checkout.V50.FastlaneDetails.t()
            | Adyen.Checkout.V50.GenericIssuerPaymentMethodDetails.t()
            | Adyen.Checkout.V50.GooglePayDetails.t()
            | Adyen.Checkout.V50.IdealDetails.t()
            | Adyen.Checkout.V50.KlarnaDetails.t()
            | Adyen.Checkout.V50.KlarnaNetworkDetails.t()
            | Adyen.Checkout.V50.MasterpassDetails.t()
            | Adyen.Checkout.V50.MbwayDetails.t()
            | Adyen.Checkout.V50.MobilePayDetails.t()
            | Adyen.Checkout.V50.MolPayDetails.t()
            | Adyen.Checkout.V50.OpenInvoiceDetails.t()
            | Adyen.Checkout.V50.PayByBankAISDirectDebitDetails.t()
            | Adyen.Checkout.V50.PayByBankDetails.t()
            | Adyen.Checkout.V50.PayPalDetails.t()
            | Adyen.Checkout.V50.PayPayDetails.t()
            | Adyen.Checkout.V50.PayToDetails.t()
            | Adyen.Checkout.V50.PayUUpiDetails.t()
            | Adyen.Checkout.V50.PayWithGoogleDetails.t()
            | Adyen.Checkout.V50.PaymentDetails.t()
            | Adyen.Checkout.V50.PixDetails.t()
            | Adyen.Checkout.V50.PixPayByBankDetails.t()
            | Adyen.Checkout.V50.PseDetails.t()
            | Adyen.Checkout.V50.RakutenPayDetails.t()
            | Adyen.Checkout.V50.RatepayDetails.t()
            | Adyen.Checkout.V50.RivertyDetails.t()
            | Adyen.Checkout.V50.SamsungPayDetails.t()
            | Adyen.Checkout.V50.SepaDirectDebitDetails.t()
            | Adyen.Checkout.V50.StoredPaymentMethodDetails.t()
            | Adyen.Checkout.V50.TwintDetails.t()
            | Adyen.Checkout.V50.UpiCollectDetails.t()
            | Adyen.Checkout.V50.UpiIntentDetails.t()
            | Adyen.Checkout.V50.UpiQrDetails.t()
            | Adyen.Checkout.V50.VippsDetails.t()
            | Adyen.Checkout.V50.VisaCheckoutDetails.t()
            | Adyen.Checkout.V50.WeChatPayDetails.t()
            | Adyen.Checkout.V50.WeChatPayMiniProgramDetails.t()
            | Adyen.Checkout.V50.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: Adyen.Checkout.V50.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Adyen.Checkout.V50.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [Adyen.Checkout.V50.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [Adyen.Checkout.V50.SubMerchantInfoWrapper.t()] | nil,
          surcharge: Adyen.Checkout.V50.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: Adyen.Checkout.V50.ThreeDs2RequestFields.t() | nil,
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
      accountInfo: {Adyen.Checkout.V50.AccountInfo, :t},
      additionalAmount: {Adyen.Checkout.V50.Amount, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.V50.Amount, :t},
      applicationInfo: {Adyen.Checkout.V50.ApplicationInfo, :t},
      bankAccount: {Adyen.Checkout.V50.CheckoutBankAccount, :t},
      billingAddress: {Adyen.Checkout.V50.BillingAddress, :t},
      browserInfo: {Adyen.Checkout.V50.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {Adyen.Checkout.V50.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {Adyen.Checkout.V50.ForexQuote, :t},
      deliveryAddress: {Adyen.Checkout.V50.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {Adyen.Checkout.V50.FundOrigin, :t},
      fundRecipient: {Adyen.Checkout.V50.FundRecipient, :t},
      installments: {Adyen.Checkout.V50.Installments, :t},
      lineItems: [{Adyen.Checkout.V50.LineItem, :t}],
      mandate: {Adyen.Checkout.V50.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {Adyen.Checkout.V50.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {Adyen.Checkout.V50.ThreeDSecureData, :t},
      order: {Adyen.Checkout.V50.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {Adyen.Checkout.V50.AchDetails, :t},
           {Adyen.Checkout.V50.AffirmDetails, :t},
           {Adyen.Checkout.V50.AfterpayDetails, :t},
           {Adyen.Checkout.V50.AlmaDetails, :t},
           {Adyen.Checkout.V50.AmazonPayDetails, :t},
           {Adyen.Checkout.V50.AncvDetails, :t},
           {Adyen.Checkout.V50.AndroidPayDetails, :t},
           {Adyen.Checkout.V50.ApplePayDetails, :t},
           {Adyen.Checkout.V50.BacsDirectDebitDetails, :t},
           {Adyen.Checkout.V50.BillDeskDetails, :t},
           {Adyen.Checkout.V50.BlikDetails, :t},
           {Adyen.Checkout.V50.CardDetails, :t},
           {Adyen.Checkout.V50.CashAppDetails, :t},
           {Adyen.Checkout.V50.CellulantDetails, :t},
           {Adyen.Checkout.V50.DirectDebitAuDetails, :t},
           {Adyen.Checkout.V50.DokuDetails, :t},
           {Adyen.Checkout.V50.DragonpayDetails, :t},
           {Adyen.Checkout.V50.EBankingFinlandDetails, :t},
           {Adyen.Checkout.V50.EcontextVoucherDetails, :t},
           {Adyen.Checkout.V50.EftDetails, :t},
           {Adyen.Checkout.V50.ExternalTokenDetails, :t},
           {Adyen.Checkout.V50.FastlaneDetails, :t},
           {Adyen.Checkout.V50.GenericIssuerPaymentMethodDetails, :t},
           {Adyen.Checkout.V50.GooglePayDetails, :t},
           {Adyen.Checkout.V50.IdealDetails, :t},
           {Adyen.Checkout.V50.KlarnaDetails, :t},
           {Adyen.Checkout.V50.KlarnaNetworkDetails, :t},
           {Adyen.Checkout.V50.MasterpassDetails, :t},
           {Adyen.Checkout.V50.MbwayDetails, :t},
           {Adyen.Checkout.V50.MobilePayDetails, :t},
           {Adyen.Checkout.V50.MolPayDetails, :t},
           {Adyen.Checkout.V50.OpenInvoiceDetails, :t},
           {Adyen.Checkout.V50.PayByBankAISDirectDebitDetails, :t},
           {Adyen.Checkout.V50.PayByBankDetails, :t},
           {Adyen.Checkout.V50.PayPalDetails, :t},
           {Adyen.Checkout.V50.PayPayDetails, :t},
           {Adyen.Checkout.V50.PayToDetails, :t},
           {Adyen.Checkout.V50.PayUUpiDetails, :t},
           {Adyen.Checkout.V50.PayWithGoogleDetails, :t},
           {Adyen.Checkout.V50.PaymentDetails, :t},
           {Adyen.Checkout.V50.PixDetails, :t},
           {Adyen.Checkout.V50.PixPayByBankDetails, :t},
           {Adyen.Checkout.V50.PseDetails, :t},
           {Adyen.Checkout.V50.RakutenPayDetails, :t},
           {Adyen.Checkout.V50.RatepayDetails, :t},
           {Adyen.Checkout.V50.RivertyDetails, :t},
           {Adyen.Checkout.V50.SamsungPayDetails, :t},
           {Adyen.Checkout.V50.SepaDirectDebitDetails, :t},
           {Adyen.Checkout.V50.StoredPaymentMethodDetails, :t},
           {Adyen.Checkout.V50.TwintDetails, :t},
           {Adyen.Checkout.V50.UpiCollectDetails, :t},
           {Adyen.Checkout.V50.UpiIntentDetails, :t},
           {Adyen.Checkout.V50.UpiQrDetails, :t},
           {Adyen.Checkout.V50.VippsDetails, :t},
           {Adyen.Checkout.V50.VisaCheckoutDetails, :t},
           {Adyen.Checkout.V50.WeChatPayDetails, :t},
           {Adyen.Checkout.V50.WeChatPayMiniProgramDetails, :t},
           {Adyen.Checkout.V50.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {Adyen.Checkout.V50.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {Adyen.Checkout.V50.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{Adyen.Checkout.V50.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{Adyen.Checkout.V50.SubMerchantInfoWrapper, :t}],
      surcharge: {Adyen.Checkout.V50.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {Adyen.Checkout.V50.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
