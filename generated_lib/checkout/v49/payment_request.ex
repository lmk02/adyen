defmodule Adyen.Checkout.V49.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: Adyen.Checkout.V49.AccountInfo.t() | nil,
          additionalAmount: Adyen.Checkout.V49.Amount.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V49.Amount.t(),
          applicationInfo: Adyen.Checkout.V49.ApplicationInfo.t() | nil,
          bankAccount: Adyen.Checkout.V49.CheckoutBankAccount.t() | nil,
          billingAddress: Adyen.Checkout.V49.BillingAddress.t() | nil,
          browserInfo: Adyen.Checkout.V49.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: Adyen.Checkout.V49.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: Adyen.Checkout.V49.ForexQuote.t() | nil,
          deliveryAddress: Adyen.Checkout.V49.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: Adyen.Checkout.V49.FundOrigin.t() | nil,
          fundRecipient: Adyen.Checkout.V49.FundRecipient.t() | nil,
          installments: Adyen.Checkout.V49.Installments.t() | nil,
          lineItems: [Adyen.Checkout.V49.LineItem.t()] | nil,
          mandate: Adyen.Checkout.V49.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: Adyen.Checkout.V49.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: Adyen.Checkout.V49.ThreeDSecureData.t() | nil,
          order: Adyen.Checkout.V49.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            Adyen.Checkout.V49.AchDetails.t()
            | Adyen.Checkout.V49.AffirmDetails.t()
            | Adyen.Checkout.V49.AfterpayDetails.t()
            | Adyen.Checkout.V49.AlmaDetails.t()
            | Adyen.Checkout.V49.AmazonPayDetails.t()
            | Adyen.Checkout.V49.AncvDetails.t()
            | Adyen.Checkout.V49.AndroidPayDetails.t()
            | Adyen.Checkout.V49.ApplePayDetails.t()
            | Adyen.Checkout.V49.BacsDirectDebitDetails.t()
            | Adyen.Checkout.V49.BillDeskDetails.t()
            | Adyen.Checkout.V49.BlikDetails.t()
            | Adyen.Checkout.V49.CardDetails.t()
            | Adyen.Checkout.V49.CashAppDetails.t()
            | Adyen.Checkout.V49.CellulantDetails.t()
            | Adyen.Checkout.V49.DirectDebitAuDetails.t()
            | Adyen.Checkout.V49.DokuDetails.t()
            | Adyen.Checkout.V49.DragonpayDetails.t()
            | Adyen.Checkout.V49.EBankingFinlandDetails.t()
            | Adyen.Checkout.V49.EcontextVoucherDetails.t()
            | Adyen.Checkout.V49.EftDetails.t()
            | Adyen.Checkout.V49.ExternalTokenDetails.t()
            | Adyen.Checkout.V49.FastlaneDetails.t()
            | Adyen.Checkout.V49.GenericIssuerPaymentMethodDetails.t()
            | Adyen.Checkout.V49.GooglePayDetails.t()
            | Adyen.Checkout.V49.IdealDetails.t()
            | Adyen.Checkout.V49.KlarnaDetails.t()
            | Adyen.Checkout.V49.KlarnaNetworkDetails.t()
            | Adyen.Checkout.V49.MasterpassDetails.t()
            | Adyen.Checkout.V49.MbwayDetails.t()
            | Adyen.Checkout.V49.MobilePayDetails.t()
            | Adyen.Checkout.V49.MolPayDetails.t()
            | Adyen.Checkout.V49.OpenInvoiceDetails.t()
            | Adyen.Checkout.V49.PayByBankAISDirectDebitDetails.t()
            | Adyen.Checkout.V49.PayByBankDetails.t()
            | Adyen.Checkout.V49.PayPalDetails.t()
            | Adyen.Checkout.V49.PayPayDetails.t()
            | Adyen.Checkout.V49.PayToDetails.t()
            | Adyen.Checkout.V49.PayUUpiDetails.t()
            | Adyen.Checkout.V49.PayWithGoogleDetails.t()
            | Adyen.Checkout.V49.PaymentDetails.t()
            | Adyen.Checkout.V49.PixDetails.t()
            | Adyen.Checkout.V49.PixPayByBankDetails.t()
            | Adyen.Checkout.V49.PseDetails.t()
            | Adyen.Checkout.V49.RakutenPayDetails.t()
            | Adyen.Checkout.V49.RatepayDetails.t()
            | Adyen.Checkout.V49.RivertyDetails.t()
            | Adyen.Checkout.V49.SamsungPayDetails.t()
            | Adyen.Checkout.V49.SepaDirectDebitDetails.t()
            | Adyen.Checkout.V49.StoredPaymentMethodDetails.t()
            | Adyen.Checkout.V49.TwintDetails.t()
            | Adyen.Checkout.V49.UpiCollectDetails.t()
            | Adyen.Checkout.V49.UpiIntentDetails.t()
            | Adyen.Checkout.V49.UpiQrDetails.t()
            | Adyen.Checkout.V49.VippsDetails.t()
            | Adyen.Checkout.V49.VisaCheckoutDetails.t()
            | Adyen.Checkout.V49.WeChatPayDetails.t()
            | Adyen.Checkout.V49.WeChatPayMiniProgramDetails.t()
            | Adyen.Checkout.V49.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: Adyen.Checkout.V49.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Adyen.Checkout.V49.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [Adyen.Checkout.V49.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [Adyen.Checkout.V49.SubMerchantInfoWrapper.t()] | nil,
          surcharge: Adyen.Checkout.V49.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: Adyen.Checkout.V49.ThreeDs2RequestFields.t() | nil,
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
    :trustedShopper
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountInfo: {Adyen.Checkout.V49.AccountInfo, :t},
      additionalAmount: {Adyen.Checkout.V49.Amount, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.V49.Amount, :t},
      applicationInfo: {Adyen.Checkout.V49.ApplicationInfo, :t},
      bankAccount: {Adyen.Checkout.V49.CheckoutBankAccount, :t},
      billingAddress: {Adyen.Checkout.V49.BillingAddress, :t},
      browserInfo: {Adyen.Checkout.V49.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {Adyen.Checkout.V49.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {Adyen.Checkout.V49.ForexQuote, :t},
      deliveryAddress: {Adyen.Checkout.V49.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {Adyen.Checkout.V49.FundOrigin, :t},
      fundRecipient: {Adyen.Checkout.V49.FundRecipient, :t},
      installments: {Adyen.Checkout.V49.Installments, :t},
      lineItems: [{Adyen.Checkout.V49.LineItem, :t}],
      mandate: {Adyen.Checkout.V49.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {Adyen.Checkout.V49.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {Adyen.Checkout.V49.ThreeDSecureData, :t},
      order: {Adyen.Checkout.V49.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {Adyen.Checkout.V49.AchDetails, :t},
           {Adyen.Checkout.V49.AffirmDetails, :t},
           {Adyen.Checkout.V49.AfterpayDetails, :t},
           {Adyen.Checkout.V49.AlmaDetails, :t},
           {Adyen.Checkout.V49.AmazonPayDetails, :t},
           {Adyen.Checkout.V49.AncvDetails, :t},
           {Adyen.Checkout.V49.AndroidPayDetails, :t},
           {Adyen.Checkout.V49.ApplePayDetails, :t},
           {Adyen.Checkout.V49.BacsDirectDebitDetails, :t},
           {Adyen.Checkout.V49.BillDeskDetails, :t},
           {Adyen.Checkout.V49.BlikDetails, :t},
           {Adyen.Checkout.V49.CardDetails, :t},
           {Adyen.Checkout.V49.CashAppDetails, :t},
           {Adyen.Checkout.V49.CellulantDetails, :t},
           {Adyen.Checkout.V49.DirectDebitAuDetails, :t},
           {Adyen.Checkout.V49.DokuDetails, :t},
           {Adyen.Checkout.V49.DragonpayDetails, :t},
           {Adyen.Checkout.V49.EBankingFinlandDetails, :t},
           {Adyen.Checkout.V49.EcontextVoucherDetails, :t},
           {Adyen.Checkout.V49.EftDetails, :t},
           {Adyen.Checkout.V49.ExternalTokenDetails, :t},
           {Adyen.Checkout.V49.FastlaneDetails, :t},
           {Adyen.Checkout.V49.GenericIssuerPaymentMethodDetails, :t},
           {Adyen.Checkout.V49.GooglePayDetails, :t},
           {Adyen.Checkout.V49.IdealDetails, :t},
           {Adyen.Checkout.V49.KlarnaDetails, :t},
           {Adyen.Checkout.V49.KlarnaNetworkDetails, :t},
           {Adyen.Checkout.V49.MasterpassDetails, :t},
           {Adyen.Checkout.V49.MbwayDetails, :t},
           {Adyen.Checkout.V49.MobilePayDetails, :t},
           {Adyen.Checkout.V49.MolPayDetails, :t},
           {Adyen.Checkout.V49.OpenInvoiceDetails, :t},
           {Adyen.Checkout.V49.PayByBankAISDirectDebitDetails, :t},
           {Adyen.Checkout.V49.PayByBankDetails, :t},
           {Adyen.Checkout.V49.PayPalDetails, :t},
           {Adyen.Checkout.V49.PayPayDetails, :t},
           {Adyen.Checkout.V49.PayToDetails, :t},
           {Adyen.Checkout.V49.PayUUpiDetails, :t},
           {Adyen.Checkout.V49.PayWithGoogleDetails, :t},
           {Adyen.Checkout.V49.PaymentDetails, :t},
           {Adyen.Checkout.V49.PixDetails, :t},
           {Adyen.Checkout.V49.PixPayByBankDetails, :t},
           {Adyen.Checkout.V49.PseDetails, :t},
           {Adyen.Checkout.V49.RakutenPayDetails, :t},
           {Adyen.Checkout.V49.RatepayDetails, :t},
           {Adyen.Checkout.V49.RivertyDetails, :t},
           {Adyen.Checkout.V49.SamsungPayDetails, :t},
           {Adyen.Checkout.V49.SepaDirectDebitDetails, :t},
           {Adyen.Checkout.V49.StoredPaymentMethodDetails, :t},
           {Adyen.Checkout.V49.TwintDetails, :t},
           {Adyen.Checkout.V49.UpiCollectDetails, :t},
           {Adyen.Checkout.V49.UpiIntentDetails, :t},
           {Adyen.Checkout.V49.UpiQrDetails, :t},
           {Adyen.Checkout.V49.VippsDetails, :t},
           {Adyen.Checkout.V49.VisaCheckoutDetails, :t},
           {Adyen.Checkout.V49.WeChatPayDetails, :t},
           {Adyen.Checkout.V49.WeChatPayMiniProgramDetails, :t},
           {Adyen.Checkout.V49.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {Adyen.Checkout.V49.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {Adyen.Checkout.V49.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{Adyen.Checkout.V49.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{Adyen.Checkout.V49.SubMerchantInfoWrapper, :t}],
      surcharge: {Adyen.Checkout.V49.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {Adyen.Checkout.V49.ThreeDs2RequestFields, :t},
      trustedShopper: :boolean
    ]
  end
end
