defmodule Adyen.Checkout.V52.PaymentLinkRequest do
  @moduledoc """
  Provides struct and type for a PaymentLinkRequest
  """

  @type t :: %__MODULE__{
          allowedPaymentMethods: [String.t()] | nil,
          amount: Adyen.Checkout.V52.Amount.t(),
          applicationInfo: Adyen.Checkout.V52.ApplicationInfo.t() | nil,
          billingAddress: Adyen.Checkout.V52.Address.t() | nil,
          blockedPaymentMethods: [String.t()] | nil,
          countryCode: String.t() | nil,
          deliverAt: DateTime.t() | nil,
          deliveryAddress: Adyen.Checkout.V52.Address.t() | nil,
          description: String.t() | nil,
          expiresAt: String.t() | nil,
          fundOrigin: Adyen.Checkout.V52.FundOrigin.t() | nil,
          fundRecipient: Adyen.Checkout.V52.FundRecipient.t() | nil,
          installmentOptions: map | nil,
          lineItems: [Adyen.Checkout.V52.LineItem.t()] | nil,
          manualCapture: boolean | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          metadata: map | nil,
          platformChargebackLogic: Adyen.Checkout.V52.PlatformChargebackLogic.t() | nil,
          recurringProcessingModel: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t() | nil,
          reusable: boolean | nil,
          shopperEmail: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Adyen.Checkout.V52.Name.t() | nil,
          shopperReference: String.t() | nil,
          showRemovePaymentMethodButton: boolean | nil,
          splits: [Adyen.Checkout.V52.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          threeDS2RequestData: Adyen.Checkout.V52.CheckoutSessionThreeDs2RequestData.t() | nil
        }

  defstruct [
    :allowedPaymentMethods,
    :amount,
    :applicationInfo,
    :billingAddress,
    :blockedPaymentMethods,
    :countryCode,
    :deliverAt,
    :deliveryAddress,
    :description,
    :expiresAt,
    :fundOrigin,
    :fundRecipient,
    :installmentOptions,
    :lineItems,
    :manualCapture,
    :merchantAccount,
    :merchantOrderReference,
    :metadata,
    :platformChargebackLogic,
    :recurringProcessingModel,
    :reference,
    :returnUrl,
    :reusable,
    :shopperEmail,
    :shopperLocale,
    :shopperName,
    :shopperReference,
    :showRemovePaymentMethodButton,
    :splits,
    :store,
    :storePaymentMethod,
    :threeDS2RequestData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      allowedPaymentMethods: [:string],
      amount: {Adyen.Checkout.V52.Amount, :t},
      applicationInfo: {Adyen.Checkout.V52.ApplicationInfo, :t},
      billingAddress: {Adyen.Checkout.V52.Address, :t},
      blockedPaymentMethods: [:string],
      countryCode: :string,
      deliverAt: {:string, "date-time"},
      deliveryAddress: {Adyen.Checkout.V52.Address, :t},
      description: :string,
      expiresAt: :string,
      fundOrigin: {Adyen.Checkout.V52.FundOrigin, :t},
      fundRecipient: {Adyen.Checkout.V52.FundRecipient, :t},
      installmentOptions: :map,
      lineItems: [{Adyen.Checkout.V52.LineItem, :t}],
      manualCapture: :boolean,
      merchantAccount: :string,
      merchantOrderReference: :string,
      metadata: :map,
      platformChargebackLogic: {Adyen.Checkout.V52.PlatformChargebackLogic, :t},
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      reference: :string,
      returnUrl: :string,
      reusable: :boolean,
      shopperEmail: :string,
      shopperLocale: :string,
      shopperName: {Adyen.Checkout.V52.Name, :t},
      shopperReference: :string,
      showRemovePaymentMethodButton: :boolean,
      splits: [{Adyen.Checkout.V52.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      threeDS2RequestData: {Adyen.Checkout.V52.CheckoutSessionThreeDs2RequestData, :t}
    ]
  end
end
