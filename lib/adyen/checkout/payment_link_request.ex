defmodule Adyen.Checkout.PaymentLinkRequest do
  @moduledoc """
  Provides struct and type for a PaymentLinkRequest
  """

  alias Adyen.Checkout.Address
  alias Adyen.Checkout.Amount
  alias Adyen.Checkout.ApplicationInfo
  alias Adyen.Checkout.CheckoutSessionThreeDs2RequestData
  alias Adyen.Checkout.FundOrigin
  alias Adyen.Checkout.FundRecipient
  alias Adyen.Checkout.LineItem
  alias Adyen.Checkout.Name
  alias Adyen.Checkout.PlatformChargebackLogic
  alias Adyen.Checkout.RiskData
  alias Adyen.Checkout.Split

  @type t :: %__MODULE__{
          allowedPaymentMethods: [String.t()] | nil,
          amount: Amount.t(),
          applicationInfo: ApplicationInfo.t() | nil,
          billingAddress: Address.t() | nil,
          blockedPaymentMethods: [String.t()] | nil,
          captureDelayHours: integer | nil,
          countryCode: String.t() | nil,
          dateOfBirth: Date.t() | nil,
          deliverAt: DateTime.t() | nil,
          deliveryAddress: Address.t() | nil,
          description: String.t() | nil,
          expiresAt: DateTime.t() | nil,
          fundOrigin: FundOrigin.t() | nil,
          fundRecipient: FundRecipient.t() | nil,
          installmentOptions: map | nil,
          lineItems: [LineItem.t()] | nil,
          manualCapture: boolean | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          metadata: map | nil,
          platformChargebackLogic: PlatformChargebackLogic.t() | nil,
          recurringProcessingModel: String.t() | nil,
          reference: String.t(),
          requiredShopperFields: [String.t()] | nil,
          returnUrl: String.t() | nil,
          reusable: boolean | nil,
          riskData: RiskData.t() | nil,
          shopperEmail: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Name.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          showRemovePaymentMethodButton: boolean | nil,
          socialSecurityNumber: String.t() | nil,
          splitCardFundingSources: boolean | nil,
          splits: [Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethodMode: String.t() | nil,
          telephoneNumber: String.t() | nil,
          themeId: String.t() | nil,
          threeDS2RequestData: CheckoutSessionThreeDs2RequestData.t() | nil
        }

  defstruct [
    :allowedPaymentMethods,
    :amount,
    :applicationInfo,
    :billingAddress,
    :blockedPaymentMethods,
    :captureDelayHours,
    :countryCode,
    :dateOfBirth,
    :deliverAt,
    :deliveryAddress,
    :description,
    :expiresAt,
    :fundOrigin,
    :fundRecipient,
    :installmentOptions,
    :lineItems,
    :manualCapture,
    :mcc,
    :merchantAccount,
    :merchantOrderReference,
    :metadata,
    :platformChargebackLogic,
    :recurringProcessingModel,
    :reference,
    :requiredShopperFields,
    :returnUrl,
    :reusable,
    :riskData,
    :shopperEmail,
    :shopperLocale,
    :shopperName,
    :shopperReference,
    :shopperStatement,
    :showRemovePaymentMethodButton,
    :socialSecurityNumber,
    :splitCardFundingSources,
    :splits,
    :store,
    :storePaymentMethodMode,
    :telephoneNumber,
    :themeId,
    :threeDS2RequestData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      allowedPaymentMethods: [:string],
      amount: {Amount, :t},
      applicationInfo: {ApplicationInfo, :t},
      billingAddress: {Address, :t},
      blockedPaymentMethods: [:string],
      captureDelayHours: {:integer, "int32"},
      countryCode: :string,
      dateOfBirth: {:string, "date"},
      deliverAt: {:string, "date-time"},
      deliveryAddress: {Address, :t},
      description: :string,
      expiresAt: {:string, "date-time"},
      fundOrigin: {FundOrigin, :t},
      fundRecipient: {FundRecipient, :t},
      installmentOptions: :map,
      lineItems: [{LineItem, :t}],
      manualCapture: :boolean,
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      metadata: :map,
      platformChargebackLogic: {PlatformChargebackLogic, :t},
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      reference: :string,
      requiredShopperFields: [
        enum: [
          "billingAddress",
          "deliveryAddress",
          "shopperEmail",
          "shopperName",
          "telephoneNumber"
        ]
      ],
      returnUrl: :string,
      reusable: :boolean,
      riskData: {RiskData, :t},
      shopperEmail: :string,
      shopperLocale: :string,
      shopperName: {Name, :t},
      shopperReference: :string,
      shopperStatement: :string,
      showRemovePaymentMethodButton: :boolean,
      socialSecurityNumber: :string,
      splitCardFundingSources: :boolean,
      splits: [{Split, :t}],
      store: :string,
      storePaymentMethodMode: {:enum, ["askForConsent", "disabled", "enabled"]},
      telephoneNumber: :string,
      themeId: :string,
      threeDS2RequestData: {CheckoutSessionThreeDs2RequestData, :t}
    ]
  end
end
