defmodule Adyen.Checkout.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  alias Adyen.Checkout.AccountInfo
  alias Adyen.Checkout.AchDetails
  alias Adyen.Checkout.AffirmDetails
  alias Adyen.Checkout.AfterpayDetails
  alias Adyen.Checkout.AmazonPayDetails
  alias Adyen.Checkout.Amount
  alias Adyen.Checkout.AncvDetails
  alias Adyen.Checkout.AndroidPayDetails
  alias Adyen.Checkout.ApplePayDetails
  alias Adyen.Checkout.ApplicationInfo
  alias Adyen.Checkout.AuthenticationData
  alias Adyen.Checkout.BacsDirectDebitDetails
  alias Adyen.Checkout.BillDeskDetails
  alias Adyen.Checkout.BillingAddress
  alias Adyen.Checkout.BlikDetails
  alias Adyen.Checkout.BrowserInfo
  alias Adyen.Checkout.CardDetails
  alias Adyen.Checkout.CashAppDetails
  alias Adyen.Checkout.CellulantDetails
  alias Adyen.Checkout.CheckoutBankAccount
  alias Adyen.Checkout.Company
  alias Adyen.Checkout.DeliveryAddress
  alias Adyen.Checkout.DokuDetails
  alias Adyen.Checkout.DragonpayDetails
  alias Adyen.Checkout.EBankingFinlandDetails
  alias Adyen.Checkout.EcontextVoucherDetails
  alias Adyen.Checkout.EftDetails
  alias Adyen.Checkout.EncryptedOrderData
  alias Adyen.Checkout.EnhancedSchemeData
  alias Adyen.Checkout.ExternalTokenDetails
  alias Adyen.Checkout.FastlaneDetails
  alias Adyen.Checkout.ForexQuote
  alias Adyen.Checkout.FundOrigin
  alias Adyen.Checkout.FundRecipient
  alias Adyen.Checkout.GenericIssuerPaymentMethodDetails
  alias Adyen.Checkout.GooglePayDetails
  alias Adyen.Checkout.IdealDetails
  alias Adyen.Checkout.Installments
  alias Adyen.Checkout.KlarnaDetails
  alias Adyen.Checkout.LineItem
  alias Adyen.Checkout.Mandate
  alias Adyen.Checkout.MasterpassDetails
  alias Adyen.Checkout.MbwayDetails
  alias Adyen.Checkout.MerchantRiskIndicator
  alias Adyen.Checkout.MobilePayDetails
  alias Adyen.Checkout.MolPayDetails
  alias Adyen.Checkout.OpenInvoiceDetails
  alias Adyen.Checkout.PayByBankAISDirectDebitDetails
  alias Adyen.Checkout.PayByBankDetails
  alias Adyen.Checkout.PaymentDetails
  alias Adyen.Checkout.PaymentValidations
  alias Adyen.Checkout.PayPalDetails
  alias Adyen.Checkout.PayPayDetails
  alias Adyen.Checkout.PayToDetails
  alias Adyen.Checkout.PayUUpiDetails
  alias Adyen.Checkout.PayWithGoogleDetails
  alias Adyen.Checkout.PixDetails
  alias Adyen.Checkout.PlatformChargebackLogic
  alias Adyen.Checkout.PseDetails
  alias Adyen.Checkout.RakutenPayDetails
  alias Adyen.Checkout.RatepayDetails
  alias Adyen.Checkout.RiskData
  alias Adyen.Checkout.RivertyDetails
  alias Adyen.Checkout.SamsungPayDetails
  alias Adyen.Checkout.SepaDirectDebitDetails
  alias Adyen.Checkout.ShopperName
  alias Adyen.Checkout.ShopperTaxInfo
  alias Adyen.Checkout.Split
  alias Adyen.Checkout.StoredPaymentMethodDetails
  alias Adyen.Checkout.SubMerchantInfo
  alias Adyen.Checkout.Surcharge
  alias Adyen.Checkout.ThreeDs2RequestFields
  alias Adyen.Checkout.ThreeDSecureData
  alias Adyen.Checkout.TwintDetails
  alias Adyen.Checkout.UpiCollectDetails
  alias Adyen.Checkout.UpiIntentDetails
  alias Adyen.Checkout.UpiQrDetails
  alias Adyen.Checkout.VippsDetails
  alias Adyen.Checkout.VisaCheckoutDetails
  alias Adyen.Checkout.WeChatPayDetails
  alias Adyen.Checkout.WeChatPayMiniProgramDetails
  alias Adyen.Checkout.ZipDetails

  @type t :: %__MODULE__{
          accountInfo: AccountInfo.t() | nil,
          additionalAmount: Amount.t() | nil,
          additionalData: map | nil,
          amount: Amount.t(),
          applicationInfo: ApplicationInfo.t() | nil,
          authenticationData: AuthenticationData.t() | nil,
          bankAccount: CheckoutBankAccount.t() | nil,
          billingAddress: BillingAddress.t() | nil,
          browserInfo: BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: ForexQuote.t() | nil,
          deliverAt: DateTime.t() | nil,
          deliveryAddress: DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          enhancedSchemeData: EnhancedSchemeData.t() | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: FundOrigin.t() | nil,
          fundRecipient: FundRecipient.t() | nil,
          industryUsage: String.t() | nil,
          installments: Installments.t() | nil,
          lineItems: [LineItem.t()] | nil,
          localizedShopperStatement: map | nil,
          mandate: Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: ThreeDSecureData.t() | nil,
          order: EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            AchDetails.t()
            | AffirmDetails.t()
            | AfterpayDetails.t()
            | AmazonPayDetails.t()
            | AncvDetails.t()
            | AndroidPayDetails.t()
            | ApplePayDetails.t()
            | BacsDirectDebitDetails.t()
            | BillDeskDetails.t()
            | BlikDetails.t()
            | CardDetails.t()
            | CashAppDetails.t()
            | CellulantDetails.t()
            | DokuDetails.t()
            | DragonpayDetails.t()
            | EBankingFinlandDetails.t()
            | EcontextVoucherDetails.t()
            | EftDetails.t()
            | ExternalTokenDetails.t()
            | FastlaneDetails.t()
            | GenericIssuerPaymentMethodDetails.t()
            | GooglePayDetails.t()
            | IdealDetails.t()
            | KlarnaDetails.t()
            | MasterpassDetails.t()
            | MbwayDetails.t()
            | MobilePayDetails.t()
            | MolPayDetails.t()
            | OpenInvoiceDetails.t()
            | PayByBankAISDirectDebitDetails.t()
            | PayByBankDetails.t()
            | PayPalDetails.t()
            | PayPayDetails.t()
            | PayToDetails.t()
            | PayUUpiDetails.t()
            | PayWithGoogleDetails.t()
            | PaymentDetails.t()
            | PixDetails.t()
            | PseDetails.t()
            | RakutenPayDetails.t()
            | RatepayDetails.t()
            | RivertyDetails.t()
            | SamsungPayDetails.t()
            | SepaDirectDebitDetails.t()
            | StoredPaymentMethodDetails.t()
            | TwintDetails.t()
            | UpiCollectDetails.t()
            | UpiIntentDetails.t()
            | UpiQrDetails.t()
            | VippsDetails.t()
            | VisaCheckoutDetails.t()
            | WeChatPayDetails.t()
            | WeChatPayMiniProgramDetails.t()
            | ZipDetails.t(),
          paymentValidations: PaymentValidations.t() | nil,
          platformChargebackLogic: PlatformChargebackLogic.t() | nil,
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          shopperTaxInfo: ShopperTaxInfo.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [SubMerchantInfo.t()] | nil,
          surcharge: Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: ThreeDs2RequestFields.t() | nil,
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
    :deliverAt,
    :deliveryAddress,
    :deliveryDate,
    :deviceFingerprint,
    :enableOneClick,
    :enablePayOut,
    :enableRecurring,
    :enhancedSchemeData,
    :entityType,
    :fraudOffset,
    :fundOrigin,
    :fundRecipient,
    :industryUsage,
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
      accountInfo: {AccountInfo, :t},
      additionalAmount: {Amount, :t},
      additionalData: :map,
      amount: {Amount, :t},
      applicationInfo: {ApplicationInfo, :t},
      authenticationData: {AuthenticationData, :t},
      bankAccount: {CheckoutBankAccount, :t},
      billingAddress: {BillingAddress, :t},
      browserInfo: {BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {ForexQuote, :t},
      deliverAt: {:string, "date-time"},
      deliveryAddress: {DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      enhancedSchemeData: {EnhancedSchemeData, :t},
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {FundOrigin, :t},
      fundRecipient: {FundRecipient, :t},
      industryUsage: {:enum, ["delayedCharge", "installment", "noShow"]},
      installments: {Installments, :t},
      lineItems: [{LineItem, :t}],
      localizedShopperStatement: :map,
      mandate: {Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {ThreeDSecureData, :t},
      order: {EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {AchDetails, :t},
           {AffirmDetails, :t},
           {AfterpayDetails, :t},
           {AmazonPayDetails, :t},
           {AncvDetails, :t},
           {AndroidPayDetails, :t},
           {ApplePayDetails, :t},
           {BacsDirectDebitDetails, :t},
           {BillDeskDetails, :t},
           {BlikDetails, :t},
           {CardDetails, :t},
           {CashAppDetails, :t},
           {CellulantDetails, :t},
           {DokuDetails, :t},
           {DragonpayDetails, :t},
           {EBankingFinlandDetails, :t},
           {EcontextVoucherDetails, :t},
           {EftDetails, :t},
           {ExternalTokenDetails, :t},
           {FastlaneDetails, :t},
           {GenericIssuerPaymentMethodDetails, :t},
           {GooglePayDetails, :t},
           {IdealDetails, :t},
           {KlarnaDetails, :t},
           {MasterpassDetails, :t},
           {MbwayDetails, :t},
           {MobilePayDetails, :t},
           {MolPayDetails, :t},
           {OpenInvoiceDetails, :t},
           {PayByBankAISDirectDebitDetails, :t},
           {PayByBankDetails, :t},
           {PayPalDetails, :t},
           {PayPayDetails, :t},
           {PayToDetails, :t},
           {PayUUpiDetails, :t},
           {PayWithGoogleDetails, :t},
           {PaymentDetails, :t},
           {PixDetails, :t},
           {PseDetails, :t},
           {RakutenPayDetails, :t},
           {RatepayDetails, :t},
           {RivertyDetails, :t},
           {SamsungPayDetails, :t},
           {SepaDirectDebitDetails, :t},
           {StoredPaymentMethodDetails, :t},
           {TwintDetails, :t},
           {UpiCollectDetails, :t},
           {UpiIntentDetails, :t},
           {UpiQrDetails, :t},
           {VippsDetails, :t},
           {VisaCheckoutDetails, :t},
           {WeChatPayDetails, :t},
           {WeChatPayMiniProgramDetails, :t},
           {ZipDetails, :t}
         ]},
      paymentValidations: {PaymentValidations, :t},
      platformChargebackLogic: {PlatformChargebackLogic, :t},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      shopperTaxInfo: {ShopperTaxInfo, :t},
      socialSecurityNumber: :string,
      splits: [{Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{SubMerchantInfo, :t}],
      surcharge: {Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
