defmodule Adyen.Checkout.V41.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: Adyen.Checkout.V41.AccountInfo.t() | nil,
          additionalAmount: Adyen.Checkout.V41.Amount.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V41.Amount.t(),
          applicationInfo: Adyen.Checkout.V41.ApplicationInfo.t() | nil,
          bankAccount: Adyen.Checkout.V41.CheckoutBankAccount.t() | nil,
          billingAddress: Adyen.Checkout.V41.BillingAddress.t() | nil,
          browserInfo: Adyen.Checkout.V41.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: Adyen.Checkout.V41.Company.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: Adyen.Checkout.V41.ForexQuote.t() | nil,
          deliveryAddress: Adyen.Checkout.V41.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: Adyen.Checkout.V41.FundOrigin.t() | nil,
          fundRecipient: Adyen.Checkout.V41.FundRecipient.t() | nil,
          installments: Adyen.Checkout.V41.Installments.t() | nil,
          lineItems: [Adyen.Checkout.V41.LineItem.t()] | nil,
          mandate: Adyen.Checkout.V41.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: Adyen.Checkout.V41.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: Adyen.Checkout.V41.ThreeDSecureData.t() | nil,
          order: Adyen.Checkout.V41.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            Adyen.Checkout.V41.AchDetails.t()
            | Adyen.Checkout.V41.AffirmDetails.t()
            | Adyen.Checkout.V41.AfterpayDetails.t()
            | Adyen.Checkout.V41.AmazonPayDetails.t()
            | Adyen.Checkout.V41.AncvDetails.t()
            | Adyen.Checkout.V41.AndroidPayDetails.t()
            | Adyen.Checkout.V41.ApplePayDetails.t()
            | Adyen.Checkout.V41.BacsDirectDebitDetails.t()
            | Adyen.Checkout.V41.BillDeskDetails.t()
            | Adyen.Checkout.V41.BlikDetails.t()
            | Adyen.Checkout.V41.CardDetails.t()
            | Adyen.Checkout.V41.CashAppDetails.t()
            | Adyen.Checkout.V41.CellulantDetails.t()
            | Adyen.Checkout.V41.DokuDetails.t()
            | Adyen.Checkout.V41.DragonpayDetails.t()
            | Adyen.Checkout.V41.EBankingFinlandDetails.t()
            | Adyen.Checkout.V41.EcontextVoucherDetails.t()
            | Adyen.Checkout.V41.EftDetails.t()
            | Adyen.Checkout.V41.ExternalTokenDetails.t()
            | Adyen.Checkout.V41.FastlaneDetails.t()
            | Adyen.Checkout.V41.GenericIssuerPaymentMethodDetails.t()
            | Adyen.Checkout.V41.GooglePayDetails.t()
            | Adyen.Checkout.V41.IdealDetails.t()
            | Adyen.Checkout.V41.KlarnaDetails.t()
            | Adyen.Checkout.V41.MasterpassDetails.t()
            | Adyen.Checkout.V41.MbwayDetails.t()
            | Adyen.Checkout.V41.MobilePayDetails.t()
            | Adyen.Checkout.V41.MolPayDetails.t()
            | Adyen.Checkout.V41.OpenInvoiceDetails.t()
            | Adyen.Checkout.V41.PayByBankAISDirectDebitDetails.t()
            | Adyen.Checkout.V41.PayByBankDetails.t()
            | Adyen.Checkout.V41.PayPalDetails.t()
            | Adyen.Checkout.V41.PayPayDetails.t()
            | Adyen.Checkout.V41.PayToDetails.t()
            | Adyen.Checkout.V41.PayUUpiDetails.t()
            | Adyen.Checkout.V41.PayWithGoogleDetails.t()
            | Adyen.Checkout.V41.PaymentDetails.t()
            | Adyen.Checkout.V41.PixDetails.t()
            | Adyen.Checkout.V41.PseDetails.t()
            | Adyen.Checkout.V41.RakutenPayDetails.t()
            | Adyen.Checkout.V41.RatepayDetails.t()
            | Adyen.Checkout.V41.RivertyDetails.t()
            | Adyen.Checkout.V41.SamsungPayDetails.t()
            | Adyen.Checkout.V41.SepaDirectDebitDetails.t()
            | Adyen.Checkout.V41.StoredPaymentMethodDetails.t()
            | Adyen.Checkout.V41.TwintDetails.t()
            | Adyen.Checkout.V41.UpiCollectDetails.t()
            | Adyen.Checkout.V41.UpiIntentDetails.t()
            | Adyen.Checkout.V41.UpiQrDetails.t()
            | Adyen.Checkout.V41.VippsDetails.t()
            | Adyen.Checkout.V41.VisaCheckoutDetails.t()
            | Adyen.Checkout.V41.WeChatPayDetails.t()
            | Adyen.Checkout.V41.WeChatPayMiniProgramDetails.t()
            | Adyen.Checkout.V41.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: Adyen.Checkout.V41.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Adyen.Checkout.V41.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [Adyen.Checkout.V41.Split.t()] | nil,
          store: String.t() | nil,
          subMerchants: [Adyen.Checkout.V41.SubMerchantInfoWrapper.t()] | nil,
          surcharge: Adyen.Checkout.V41.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: Adyen.Checkout.V41.ThreeDs2RequestFields.t() | nil,
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
      accountInfo: {Adyen.Checkout.V41.AccountInfo, :t},
      additionalAmount: {Adyen.Checkout.V41.Amount, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.V41.Amount, :t},
      applicationInfo: {Adyen.Checkout.V41.ApplicationInfo, :t},
      bankAccount: {Adyen.Checkout.V41.CheckoutBankAccount, :t},
      billingAddress: {Adyen.Checkout.V41.BillingAddress, :t},
      browserInfo: {Adyen.Checkout.V41.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {Adyen.Checkout.V41.Company, :t},
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {Adyen.Checkout.V41.ForexQuote, :t},
      deliveryAddress: {Adyen.Checkout.V41.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {Adyen.Checkout.V41.FundOrigin, :t},
      fundRecipient: {Adyen.Checkout.V41.FundRecipient, :t},
      installments: {Adyen.Checkout.V41.Installments, :t},
      lineItems: [{Adyen.Checkout.V41.LineItem, :t}],
      mandate: {Adyen.Checkout.V41.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {Adyen.Checkout.V41.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {Adyen.Checkout.V41.ThreeDSecureData, :t},
      order: {Adyen.Checkout.V41.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {Adyen.Checkout.V41.AchDetails, :t},
           {Adyen.Checkout.V41.AffirmDetails, :t},
           {Adyen.Checkout.V41.AfterpayDetails, :t},
           {Adyen.Checkout.V41.AmazonPayDetails, :t},
           {Adyen.Checkout.V41.AncvDetails, :t},
           {Adyen.Checkout.V41.AndroidPayDetails, :t},
           {Adyen.Checkout.V41.ApplePayDetails, :t},
           {Adyen.Checkout.V41.BacsDirectDebitDetails, :t},
           {Adyen.Checkout.V41.BillDeskDetails, :t},
           {Adyen.Checkout.V41.BlikDetails, :t},
           {Adyen.Checkout.V41.CardDetails, :t},
           {Adyen.Checkout.V41.CashAppDetails, :t},
           {Adyen.Checkout.V41.CellulantDetails, :t},
           {Adyen.Checkout.V41.DokuDetails, :t},
           {Adyen.Checkout.V41.DragonpayDetails, :t},
           {Adyen.Checkout.V41.EBankingFinlandDetails, :t},
           {Adyen.Checkout.V41.EcontextVoucherDetails, :t},
           {Adyen.Checkout.V41.EftDetails, :t},
           {Adyen.Checkout.V41.ExternalTokenDetails, :t},
           {Adyen.Checkout.V41.FastlaneDetails, :t},
           {Adyen.Checkout.V41.GenericIssuerPaymentMethodDetails, :t},
           {Adyen.Checkout.V41.GooglePayDetails, :t},
           {Adyen.Checkout.V41.IdealDetails, :t},
           {Adyen.Checkout.V41.KlarnaDetails, :t},
           {Adyen.Checkout.V41.MasterpassDetails, :t},
           {Adyen.Checkout.V41.MbwayDetails, :t},
           {Adyen.Checkout.V41.MobilePayDetails, :t},
           {Adyen.Checkout.V41.MolPayDetails, :t},
           {Adyen.Checkout.V41.OpenInvoiceDetails, :t},
           {Adyen.Checkout.V41.PayByBankAISDirectDebitDetails, :t},
           {Adyen.Checkout.V41.PayByBankDetails, :t},
           {Adyen.Checkout.V41.PayPalDetails, :t},
           {Adyen.Checkout.V41.PayPayDetails, :t},
           {Adyen.Checkout.V41.PayToDetails, :t},
           {Adyen.Checkout.V41.PayUUpiDetails, :t},
           {Adyen.Checkout.V41.PayWithGoogleDetails, :t},
           {Adyen.Checkout.V41.PaymentDetails, :t},
           {Adyen.Checkout.V41.PixDetails, :t},
           {Adyen.Checkout.V41.PseDetails, :t},
           {Adyen.Checkout.V41.RakutenPayDetails, :t},
           {Adyen.Checkout.V41.RatepayDetails, :t},
           {Adyen.Checkout.V41.RivertyDetails, :t},
           {Adyen.Checkout.V41.SamsungPayDetails, :t},
           {Adyen.Checkout.V41.SepaDirectDebitDetails, :t},
           {Adyen.Checkout.V41.StoredPaymentMethodDetails, :t},
           {Adyen.Checkout.V41.TwintDetails, :t},
           {Adyen.Checkout.V41.UpiCollectDetails, :t},
           {Adyen.Checkout.V41.UpiIntentDetails, :t},
           {Adyen.Checkout.V41.UpiQrDetails, :t},
           {Adyen.Checkout.V41.VippsDetails, :t},
           {Adyen.Checkout.V41.VisaCheckoutDetails, :t},
           {Adyen.Checkout.V41.WeChatPayDetails, :t},
           {Adyen.Checkout.V41.WeChatPayMiniProgramDetails, :t},
           {Adyen.Checkout.V41.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {Adyen.Checkout.V41.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {Adyen.Checkout.V41.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{Adyen.Checkout.V41.Split, :t}],
      store: :string,
      subMerchants: [{Adyen.Checkout.V41.SubMerchantInfoWrapper, :t}],
      surcharge: {Adyen.Checkout.V41.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {Adyen.Checkout.V41.ThreeDs2RequestFields, :t},
      trustedShopper: :boolean
    ]
  end
end
