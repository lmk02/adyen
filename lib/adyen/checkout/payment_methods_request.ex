defmodule Adyen.Checkout.PaymentMethodsRequest do
  @moduledoc """
  Provides struct and type for a PaymentMethodsRequest
  """

  alias Adyen.Checkout.Amount
  alias Adyen.Checkout.BrowserInfo
  alias Adyen.Checkout.EncryptedOrderData

  @type t :: %__MODULE__{
          additionalData: map | nil,
          allowedPaymentMethods: [String.t()] | nil,
          amount: Amount.t() | nil,
          blockedPaymentMethods: [String.t()] | nil,
          browserInfo: BrowserInfo.t() | nil,
          channel: String.t() | nil,
          countryCode: String.t() | nil,
          merchantAccount: String.t(),
          order: EncryptedOrderData.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperReference: String.t() | nil,
          splitCardFundingSources: boolean | nil,
          store: String.t() | nil,
          storeFiltrationMode: String.t() | nil,
          telephoneNumber: String.t() | nil
        }

  defstruct [
    :additionalData,
    :allowedPaymentMethods,
    :amount,
    :blockedPaymentMethods,
    :browserInfo,
    :channel,
    :countryCode,
    :merchantAccount,
    :order,
    :shopperConversionId,
    :shopperEmail,
    :shopperIP,
    :shopperLocale,
    :shopperReference,
    :splitCardFundingSources,
    :store,
    :storeFiltrationMode,
    :telephoneNumber
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      allowedPaymentMethods: [:string],
      amount: {Amount, :t},
      blockedPaymentMethods: [:string],
      browserInfo: {BrowserInfo, :t},
      channel: {:enum, ["iOS", "Android", "Web"]},
      countryCode: :string,
      merchantAccount: :string,
      order: {EncryptedOrderData, :t},
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperLocale: :string,
      shopperReference: :string,
      splitCardFundingSources: :boolean,
      store: :string,
      storeFiltrationMode: {:enum, ["exclusive", "inclusive", "skipFilter"]},
      telephoneNumber: :string
    ]
  end
end
