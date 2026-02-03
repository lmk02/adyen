defmodule Adyen.Checkout.BalanceCheckRequest do
  @moduledoc """
  Provides struct and type for a BalanceCheckRequest
  """

  alias Adyen.Checkout.AccountInfo
  alias Adyen.Checkout.Address
  alias Adyen.Checkout.Amount
  alias Adyen.Checkout.ApplicationInfo
  alias Adyen.Checkout.BrowserInfo
  alias Adyen.Checkout.ForexQuote
  alias Adyen.Checkout.Installments
  alias Adyen.Checkout.MerchantRiskIndicator
  alias Adyen.Checkout.Name
  alias Adyen.Checkout.Recurring
  alias Adyen.Checkout.Split
  alias Adyen.Checkout.ThreeDs2RequestData

  @type t :: %__MODULE__{
          accountInfo: AccountInfo.t() | nil,
          additionalAmount: Amount.t() | nil,
          additionalData: map | nil,
          amount: Amount.t(),
          applicationInfo: ApplicationInfo.t() | nil,
          billingAddress: Address.t() | nil,
          browserInfo: BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          dateOfBirth: Date.t() | nil,
          dccQuote: ForexQuote.t() | nil,
          deliveryAddress: Address.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          fraudOffset: integer | nil,
          installments: Installments.t() | nil,
          localizedShopperStatement: map | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          orderReference: String.t() | nil,
          paymentMethod: map,
          recurring: Recurring.t() | nil,
          recurringProcessingModel: String.t() | nil,
          reference: String.t() | nil,
          selectedBrand: String.t() | nil,
          selectedRecurringDetailReference: String.t() | nil,
          sessionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: Name.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [Split.t()] | nil,
          store: String.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: ThreeDs2RequestData.t() | nil,
          threeDSAuthenticationOnly: boolean | nil,
          totalsGroup: String.t() | nil,
          trustedShopper: boolean | nil
        }

  defstruct [
    :accountInfo,
    :additionalAmount,
    :additionalData,
    :amount,
    :applicationInfo,
    :billingAddress,
    :browserInfo,
    :captureDelayHours,
    :dateOfBirth,
    :dccQuote,
    :deliveryAddress,
    :deliveryDate,
    :deviceFingerprint,
    :fraudOffset,
    :installments,
    :localizedShopperStatement,
    :mcc,
    :merchantAccount,
    :merchantOrderReference,
    :merchantRiskIndicator,
    :metadata,
    :orderReference,
    :paymentMethod,
    :recurring,
    :recurringProcessingModel,
    :reference,
    :selectedBrand,
    :selectedRecurringDetailReference,
    :sessionId,
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
    :telephoneNumber,
    :threeDS2RequestData,
    :threeDSAuthenticationOnly,
    :totalsGroup,
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
      billingAddress: {Address, :t},
      browserInfo: {BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      dateOfBirth: {:string, "date"},
      dccQuote: {ForexQuote, :t},
      deliveryAddress: {Address, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      fraudOffset: {:integer, "int32"},
      installments: {Installments, :t},
      localizedShopperStatement: :map,
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {MerchantRiskIndicator, :t},
      metadata: :map,
      orderReference: :string,
      paymentMethod: :map,
      recurring: {Recurring, :t},
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      reference: :string,
      selectedBrand: :string,
      selectedRecurringDetailReference: :string,
      sessionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {Name, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{Split, :t}],
      store: :string,
      telephoneNumber: :string,
      threeDS2RequestData: {ThreeDs2RequestData, :t},
      threeDSAuthenticationOnly: :boolean,
      totalsGroup: :string,
      trustedShopper: :boolean
    ]
  end
end
