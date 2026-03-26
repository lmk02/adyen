defmodule Adyen.Checkout.V40.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: Adyen.Checkout.V40.AccountInfo.t() | nil,
          additionalAmount: Adyen.Checkout.V40.Amount.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V40.Amount.t(),
          applicationInfo: Adyen.Checkout.V40.ApplicationInfo.t() | nil,
          bankAccount: Adyen.Checkout.V40.CheckoutBankAccount.t() | nil,
          billingAddress: Adyen.Checkout.V40.BillingAddress.t() | nil,
          browserInfo: Adyen.Checkout.V40.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: Adyen.Checkout.V40.Company.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: Adyen.Checkout.V40.ForexQuote.t() | nil,
          deliveryAddress: Adyen.Checkout.V40.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: Adyen.Checkout.V40.FundOrigin.t() | nil,
          fundRecipient: Adyen.Checkout.V40.FundRecipient.t() | nil,
          installments: Adyen.Checkout.V40.Installments.t() | nil,
          lineItems: [Adyen.Checkout.V40.LineItem.t()] | nil,
          mandate: Adyen.Checkout.V40.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: Adyen.Checkout.V40.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: Adyen.Checkout.V40.ThreeDSecureData.t() | nil,
          order: Adyen.Checkout.V40.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            Adyen.Checkout.V40.AchDetails.t()
            | Adyen.Checkout.V40.AffirmDetails.t()
            | Adyen.Checkout.V40.AfterpayDetails.t()
            | Adyen.Checkout.V40.AlmaDetails.t()
            | Adyen.Checkout.V40.AmazonPayDetails.t()
            | Adyen.Checkout.V40.AncvDetails.t()
            | Adyen.Checkout.V40.AndroidPayDetails.t()
            | Adyen.Checkout.V40.ApplePayDetails.t()
            | Adyen.Checkout.V40.BacsDirectDebitDetails.t()
            | Adyen.Checkout.V40.BillDeskDetails.t()
            | Adyen.Checkout.V40.BlikDetails.t()
            | Adyen.Checkout.V40.CardDetails.t()
            | Adyen.Checkout.V40.CashAppDetails.t()
            | Adyen.Checkout.V40.CellulantDetails.t()
            | Adyen.Checkout.V40.DirectDebitAuDetails.t()
            | Adyen.Checkout.V40.DokuDetails.t()
            | Adyen.Checkout.V40.DragonpayDetails.t()
            | Adyen.Checkout.V40.EBankingFinlandDetails.t()
            | Adyen.Checkout.V40.EcontextVoucherDetails.t()
            | Adyen.Checkout.V40.EftDetails.t()
            | Adyen.Checkout.V40.ExternalTokenDetails.t()
            | Adyen.Checkout.V40.FastlaneDetails.t()
            | Adyen.Checkout.V40.GenericIssuerPaymentMethodDetails.t()
            | Adyen.Checkout.V40.GooglePayDetails.t()
            | Adyen.Checkout.V40.IdealDetails.t()
            | Adyen.Checkout.V40.KlarnaDetails.t()
            | Adyen.Checkout.V40.KlarnaNetworkDetails.t()
            | Adyen.Checkout.V40.MasterpassDetails.t()
            | Adyen.Checkout.V40.MbwayDetails.t()
            | Adyen.Checkout.V40.MobilePayDetails.t()
            | Adyen.Checkout.V40.MolPayDetails.t()
            | Adyen.Checkout.V40.OpenInvoiceDetails.t()
            | Adyen.Checkout.V40.PayByBankAISDirectDebitDetails.t()
            | Adyen.Checkout.V40.PayByBankDetails.t()
            | Adyen.Checkout.V40.PayPalDetails.t()
            | Adyen.Checkout.V40.PayPayDetails.t()
            | Adyen.Checkout.V40.PayToDetails.t()
            | Adyen.Checkout.V40.PayUUpiDetails.t()
            | Adyen.Checkout.V40.PayWithGoogleDetails.t()
            | Adyen.Checkout.V40.PaymentDetails.t()
            | Adyen.Checkout.V40.PixDetails.t()
            | Adyen.Checkout.V40.PixPayByBankDetails.t()
            | Adyen.Checkout.V40.PseDetails.t()
            | Adyen.Checkout.V40.RakutenPayDetails.t()
            | Adyen.Checkout.V40.RatepayDetails.t()
            | Adyen.Checkout.V40.RivertyDetails.t()
            | Adyen.Checkout.V40.SamsungPayDetails.t()
            | Adyen.Checkout.V40.SepaDirectDebitDetails.t()
            | Adyen.Checkout.V40.StoredPaymentMethodDetails.t()
            | Adyen.Checkout.V40.TwintDetails.t()
            | Adyen.Checkout.V40.UpiCollectDetails.t()
            | Adyen.Checkout.V40.UpiIntentDetails.t()
            | Adyen.Checkout.V40.UpiQrDetails.t()
            | Adyen.Checkout.V40.VippsDetails.t()
            | Adyen.Checkout.V40.VisaCheckoutDetails.t()
            | Adyen.Checkout.V40.WeChatPayDetails.t()
            | Adyen.Checkout.V40.WeChatPayMiniProgramDetails.t()
            | Adyen.Checkout.V40.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: Adyen.Checkout.V40.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Adyen.Checkout.V40.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [Adyen.Checkout.V40.Split.t()] | nil,
          store: String.t() | nil,
          subMerchants: [Adyen.Checkout.V40.SubMerchantInfoWrapper.t()] | nil,
          surcharge: Adyen.Checkout.V40.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: Adyen.Checkout.V40.ThreeDs2RequestFields.t() | nil,
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
      accountInfo: {Adyen.Checkout.V40.AccountInfo, :t},
      additionalAmount: {Adyen.Checkout.V40.Amount, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.V40.Amount, :t},
      applicationInfo: {Adyen.Checkout.V40.ApplicationInfo, :t},
      bankAccount: {Adyen.Checkout.V40.CheckoutBankAccount, :t},
      billingAddress: {Adyen.Checkout.V40.BillingAddress, :t},
      browserInfo: {Adyen.Checkout.V40.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {Adyen.Checkout.V40.Company, :t},
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {Adyen.Checkout.V40.ForexQuote, :t},
      deliveryAddress: {Adyen.Checkout.V40.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {Adyen.Checkout.V40.FundOrigin, :t},
      fundRecipient: {Adyen.Checkout.V40.FundRecipient, :t},
      installments: {Adyen.Checkout.V40.Installments, :t},
      lineItems: [{Adyen.Checkout.V40.LineItem, :t}],
      mandate: {Adyen.Checkout.V40.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {Adyen.Checkout.V40.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {Adyen.Checkout.V40.ThreeDSecureData, :t},
      order: {Adyen.Checkout.V40.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {Adyen.Checkout.V40.AchDetails, :t},
           {Adyen.Checkout.V40.AffirmDetails, :t},
           {Adyen.Checkout.V40.AfterpayDetails, :t},
           {Adyen.Checkout.V40.AlmaDetails, :t},
           {Adyen.Checkout.V40.AmazonPayDetails, :t},
           {Adyen.Checkout.V40.AncvDetails, :t},
           {Adyen.Checkout.V40.AndroidPayDetails, :t},
           {Adyen.Checkout.V40.ApplePayDetails, :t},
           {Adyen.Checkout.V40.BacsDirectDebitDetails, :t},
           {Adyen.Checkout.V40.BillDeskDetails, :t},
           {Adyen.Checkout.V40.BlikDetails, :t},
           {Adyen.Checkout.V40.CardDetails, :t},
           {Adyen.Checkout.V40.CashAppDetails, :t},
           {Adyen.Checkout.V40.CellulantDetails, :t},
           {Adyen.Checkout.V40.DirectDebitAuDetails, :t},
           {Adyen.Checkout.V40.DokuDetails, :t},
           {Adyen.Checkout.V40.DragonpayDetails, :t},
           {Adyen.Checkout.V40.EBankingFinlandDetails, :t},
           {Adyen.Checkout.V40.EcontextVoucherDetails, :t},
           {Adyen.Checkout.V40.EftDetails, :t},
           {Adyen.Checkout.V40.ExternalTokenDetails, :t},
           {Adyen.Checkout.V40.FastlaneDetails, :t},
           {Adyen.Checkout.V40.GenericIssuerPaymentMethodDetails, :t},
           {Adyen.Checkout.V40.GooglePayDetails, :t},
           {Adyen.Checkout.V40.IdealDetails, :t},
           {Adyen.Checkout.V40.KlarnaDetails, :t},
           {Adyen.Checkout.V40.KlarnaNetworkDetails, :t},
           {Adyen.Checkout.V40.MasterpassDetails, :t},
           {Adyen.Checkout.V40.MbwayDetails, :t},
           {Adyen.Checkout.V40.MobilePayDetails, :t},
           {Adyen.Checkout.V40.MolPayDetails, :t},
           {Adyen.Checkout.V40.OpenInvoiceDetails, :t},
           {Adyen.Checkout.V40.PayByBankAISDirectDebitDetails, :t},
           {Adyen.Checkout.V40.PayByBankDetails, :t},
           {Adyen.Checkout.V40.PayPalDetails, :t},
           {Adyen.Checkout.V40.PayPayDetails, :t},
           {Adyen.Checkout.V40.PayToDetails, :t},
           {Adyen.Checkout.V40.PayUUpiDetails, :t},
           {Adyen.Checkout.V40.PayWithGoogleDetails, :t},
           {Adyen.Checkout.V40.PaymentDetails, :t},
           {Adyen.Checkout.V40.PixDetails, :t},
           {Adyen.Checkout.V40.PixPayByBankDetails, :t},
           {Adyen.Checkout.V40.PseDetails, :t},
           {Adyen.Checkout.V40.RakutenPayDetails, :t},
           {Adyen.Checkout.V40.RatepayDetails, :t},
           {Adyen.Checkout.V40.RivertyDetails, :t},
           {Adyen.Checkout.V40.SamsungPayDetails, :t},
           {Adyen.Checkout.V40.SepaDirectDebitDetails, :t},
           {Adyen.Checkout.V40.StoredPaymentMethodDetails, :t},
           {Adyen.Checkout.V40.TwintDetails, :t},
           {Adyen.Checkout.V40.UpiCollectDetails, :t},
           {Adyen.Checkout.V40.UpiIntentDetails, :t},
           {Adyen.Checkout.V40.UpiQrDetails, :t},
           {Adyen.Checkout.V40.VippsDetails, :t},
           {Adyen.Checkout.V40.VisaCheckoutDetails, :t},
           {Adyen.Checkout.V40.WeChatPayDetails, :t},
           {Adyen.Checkout.V40.WeChatPayMiniProgramDetails, :t},
           {Adyen.Checkout.V40.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {Adyen.Checkout.V40.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {Adyen.Checkout.V40.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{Adyen.Checkout.V40.Split, :t}],
      store: :string,
      subMerchants: [{Adyen.Checkout.V40.SubMerchantInfoWrapper, :t}],
      surcharge: {Adyen.Checkout.V40.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {Adyen.Checkout.V40.ThreeDs2RequestFields, :t},
      trustedShopper: :boolean
    ]
  end
end
