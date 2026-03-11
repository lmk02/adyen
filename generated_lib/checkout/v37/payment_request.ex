defmodule Adyen.Checkout.V37.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          additionalAmount: Adyen.Checkout.V37.Amount.t() | nil,
          additionalData: map | nil,
          amount: Adyen.Checkout.V37.Amount.t(),
          bankAccount: Adyen.Checkout.V37.CheckoutBankAccount.t() | nil,
          billingAddress: Adyen.Checkout.V37.BillingAddress.t() | nil,
          browserInfo: Adyen.Checkout.V37.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: Adyen.Checkout.V37.Company.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: Adyen.Checkout.V37.ForexQuote.t() | nil,
          deliveryAddress: Adyen.Checkout.V37.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: Adyen.Checkout.V37.FundOrigin.t() | nil,
          fundRecipient: Adyen.Checkout.V37.FundRecipient.t() | nil,
          installments: Adyen.Checkout.V37.Installments.t() | nil,
          lineItems: [Adyen.Checkout.V37.LineItem.t()] | nil,
          mandate: Adyen.Checkout.V37.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          metadata: map | nil,
          mpiData: Adyen.Checkout.V37.ThreeDSecureData.t() | nil,
          order: Adyen.Checkout.V37.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          paymentMethod:
            Adyen.Checkout.V37.AchDetails.t()
            | Adyen.Checkout.V37.AffirmDetails.t()
            | Adyen.Checkout.V37.AfterpayDetails.t()
            | Adyen.Checkout.V37.AmazonPayDetails.t()
            | Adyen.Checkout.V37.AncvDetails.t()
            | Adyen.Checkout.V37.AndroidPayDetails.t()
            | Adyen.Checkout.V37.ApplePayDetails.t()
            | Adyen.Checkout.V37.BacsDirectDebitDetails.t()
            | Adyen.Checkout.V37.BillDeskDetails.t()
            | Adyen.Checkout.V37.BlikDetails.t()
            | Adyen.Checkout.V37.CardDetails.t()
            | Adyen.Checkout.V37.CashAppDetails.t()
            | Adyen.Checkout.V37.CellulantDetails.t()
            | Adyen.Checkout.V37.DokuDetails.t()
            | Adyen.Checkout.V37.DragonpayDetails.t()
            | Adyen.Checkout.V37.EBankingFinlandDetails.t()
            | Adyen.Checkout.V37.EcontextVoucherDetails.t()
            | Adyen.Checkout.V37.EftDetails.t()
            | Adyen.Checkout.V37.ExternalTokenDetails.t()
            | Adyen.Checkout.V37.FastlaneDetails.t()
            | Adyen.Checkout.V37.GenericIssuerPaymentMethodDetails.t()
            | Adyen.Checkout.V37.GooglePayDetails.t()
            | Adyen.Checkout.V37.IdealDetails.t()
            | Adyen.Checkout.V37.KlarnaDetails.t()
            | Adyen.Checkout.V37.MasterpassDetails.t()
            | Adyen.Checkout.V37.MbwayDetails.t()
            | Adyen.Checkout.V37.MobilePayDetails.t()
            | Adyen.Checkout.V37.MolPayDetails.t()
            | Adyen.Checkout.V37.OpenInvoiceDetails.t()
            | Adyen.Checkout.V37.PayByBankAISDirectDebitDetails.t()
            | Adyen.Checkout.V37.PayByBankDetails.t()
            | Adyen.Checkout.V37.PayPalDetails.t()
            | Adyen.Checkout.V37.PayPayDetails.t()
            | Adyen.Checkout.V37.PayToDetails.t()
            | Adyen.Checkout.V37.PayUUpiDetails.t()
            | Adyen.Checkout.V37.PayWithGoogleDetails.t()
            | Adyen.Checkout.V37.PaymentDetails.t()
            | Adyen.Checkout.V37.PixDetails.t()
            | Adyen.Checkout.V37.PseDetails.t()
            | Adyen.Checkout.V37.RakutenPayDetails.t()
            | Adyen.Checkout.V37.RatepayDetails.t()
            | Adyen.Checkout.V37.RivertyDetails.t()
            | Adyen.Checkout.V37.SamsungPayDetails.t()
            | Adyen.Checkout.V37.SepaDirectDebitDetails.t()
            | Adyen.Checkout.V37.StoredPaymentMethodDetails.t()
            | Adyen.Checkout.V37.TwintDetails.t()
            | Adyen.Checkout.V37.UpiCollectDetails.t()
            | Adyen.Checkout.V37.UpiIntentDetails.t()
            | Adyen.Checkout.V37.UpiQrDetails.t()
            | Adyen.Checkout.V37.VippsDetails.t()
            | Adyen.Checkout.V37.VisaCheckoutDetails.t()
            | Adyen.Checkout.V37.WeChatPayDetails.t()
            | Adyen.Checkout.V37.WeChatPayMiniProgramDetails.t()
            | Adyen.Checkout.V37.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: Adyen.Checkout.V37.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Adyen.Checkout.V37.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [Adyen.Checkout.V37.Split.t()] | nil,
          store: String.t() | nil,
          subMerchants: [Adyen.Checkout.V37.SubMerchantInfoWrapper.t()] | nil,
          surcharge: Adyen.Checkout.V37.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          trustedShopper: boolean | nil
        }

  defstruct [
    :additionalAmount,
    :additionalData,
    :amount,
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
    :metadata,
    :mpiData,
    :order,
    :orderReference,
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
    :trustedShopper
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalAmount: {Adyen.Checkout.V37.Amount, :t},
      additionalData: :map,
      amount: {Adyen.Checkout.V37.Amount, :t},
      bankAccount: {Adyen.Checkout.V37.CheckoutBankAccount, :t},
      billingAddress: {Adyen.Checkout.V37.BillingAddress, :t},
      browserInfo: {Adyen.Checkout.V37.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {Adyen.Checkout.V37.Company, :t},
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {Adyen.Checkout.V37.ForexQuote, :t},
      deliveryAddress: {Adyen.Checkout.V37.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {Adyen.Checkout.V37.FundOrigin, :t},
      fundRecipient: {Adyen.Checkout.V37.FundRecipient, :t},
      installments: {Adyen.Checkout.V37.Installments, :t},
      lineItems: [{Adyen.Checkout.V37.LineItem, :t}],
      mandate: {Adyen.Checkout.V37.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      metadata: :map,
      mpiData: {Adyen.Checkout.V37.ThreeDSecureData, :t},
      order: {Adyen.Checkout.V37.EncryptedOrderData, :t},
      orderReference: :string,
      paymentMethod:
        {:union,
         [
           {Adyen.Checkout.V37.AchDetails, :t},
           {Adyen.Checkout.V37.AffirmDetails, :t},
           {Adyen.Checkout.V37.AfterpayDetails, :t},
           {Adyen.Checkout.V37.AmazonPayDetails, :t},
           {Adyen.Checkout.V37.AncvDetails, :t},
           {Adyen.Checkout.V37.AndroidPayDetails, :t},
           {Adyen.Checkout.V37.ApplePayDetails, :t},
           {Adyen.Checkout.V37.BacsDirectDebitDetails, :t},
           {Adyen.Checkout.V37.BillDeskDetails, :t},
           {Adyen.Checkout.V37.BlikDetails, :t},
           {Adyen.Checkout.V37.CardDetails, :t},
           {Adyen.Checkout.V37.CashAppDetails, :t},
           {Adyen.Checkout.V37.CellulantDetails, :t},
           {Adyen.Checkout.V37.DokuDetails, :t},
           {Adyen.Checkout.V37.DragonpayDetails, :t},
           {Adyen.Checkout.V37.EBankingFinlandDetails, :t},
           {Adyen.Checkout.V37.EcontextVoucherDetails, :t},
           {Adyen.Checkout.V37.EftDetails, :t},
           {Adyen.Checkout.V37.ExternalTokenDetails, :t},
           {Adyen.Checkout.V37.FastlaneDetails, :t},
           {Adyen.Checkout.V37.GenericIssuerPaymentMethodDetails, :t},
           {Adyen.Checkout.V37.GooglePayDetails, :t},
           {Adyen.Checkout.V37.IdealDetails, :t},
           {Adyen.Checkout.V37.KlarnaDetails, :t},
           {Adyen.Checkout.V37.MasterpassDetails, :t},
           {Adyen.Checkout.V37.MbwayDetails, :t},
           {Adyen.Checkout.V37.MobilePayDetails, :t},
           {Adyen.Checkout.V37.MolPayDetails, :t},
           {Adyen.Checkout.V37.OpenInvoiceDetails, :t},
           {Adyen.Checkout.V37.PayByBankAISDirectDebitDetails, :t},
           {Adyen.Checkout.V37.PayByBankDetails, :t},
           {Adyen.Checkout.V37.PayPalDetails, :t},
           {Adyen.Checkout.V37.PayPayDetails, :t},
           {Adyen.Checkout.V37.PayToDetails, :t},
           {Adyen.Checkout.V37.PayUUpiDetails, :t},
           {Adyen.Checkout.V37.PayWithGoogleDetails, :t},
           {Adyen.Checkout.V37.PaymentDetails, :t},
           {Adyen.Checkout.V37.PixDetails, :t},
           {Adyen.Checkout.V37.PseDetails, :t},
           {Adyen.Checkout.V37.RakutenPayDetails, :t},
           {Adyen.Checkout.V37.RatepayDetails, :t},
           {Adyen.Checkout.V37.RivertyDetails, :t},
           {Adyen.Checkout.V37.SamsungPayDetails, :t},
           {Adyen.Checkout.V37.SepaDirectDebitDetails, :t},
           {Adyen.Checkout.V37.StoredPaymentMethodDetails, :t},
           {Adyen.Checkout.V37.TwintDetails, :t},
           {Adyen.Checkout.V37.UpiCollectDetails, :t},
           {Adyen.Checkout.V37.UpiIntentDetails, :t},
           {Adyen.Checkout.V37.UpiQrDetails, :t},
           {Adyen.Checkout.V37.VippsDetails, :t},
           {Adyen.Checkout.V37.VisaCheckoutDetails, :t},
           {Adyen.Checkout.V37.WeChatPayDetails, :t},
           {Adyen.Checkout.V37.WeChatPayMiniProgramDetails, :t},
           {Adyen.Checkout.V37.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {Adyen.Checkout.V37.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {Adyen.Checkout.V37.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{Adyen.Checkout.V37.Split, :t}],
      store: :string,
      subMerchants: [{Adyen.Checkout.V37.SubMerchantInfoWrapper, :t}],
      surcharge: {Adyen.Checkout.V37.Surcharge, :t},
      telephoneNumber: :string,
      trustedShopper: :boolean
    ]
  end
end
