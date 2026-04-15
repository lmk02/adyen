defmodule Adyen.Checkout.V72.PaymentMethodsRequest do
  @moduledoc """
  Provides struct and type for a PaymentMethodsRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          allowedPaymentMethods: [String.t()] | nil,
          amount: Adyen.Checkout.V72.Amount.t() | nil,
          blockedPaymentMethods: [String.t()] | nil,
          browserInfo: Adyen.Checkout.V72.BrowserInfo.t() | nil,
          channel: String.t() | nil,
          countryCode: String.t() | nil,
          merchantAccount: String.t(),
          order: Adyen.Checkout.V72.EncryptedOrderData.t() | nil,
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
      amount: {Adyen.Checkout.V72.Amount, :t},
      blockedPaymentMethods: [:string],
      browserInfo: {Adyen.Checkout.V72.BrowserInfo, :t},
      channel: {:enum, ["iOS", "Android", "Web"]},
      countryCode: :string,
      merchantAccount: :string,
      order: {Adyen.Checkout.V72.EncryptedOrderData, :t},
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
