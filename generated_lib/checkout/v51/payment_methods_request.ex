defmodule Adyen.Checkout.V51.PaymentMethodsRequest do
  @moduledoc """
  Provides struct and type for a PaymentMethodsRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          allowedPaymentMethods: [String.t()] | nil,
          amount: Adyen.Checkout.V51.Amount.t() | nil,
          blockedPaymentMethods: [String.t()] | nil,
          browserInfo: Adyen.Checkout.V51.BrowserInfo.t() | nil,
          channel: String.t() | nil,
          countryCode: String.t() | nil,
          enableRealTimeUpdate: boolean | nil,
          merchantAccount: String.t(),
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperReference: String.t() | nil,
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
    :enableRealTimeUpdate,
    :merchantAccount,
    :shopperConversionId,
    :shopperEmail,
    :shopperIP,
    :shopperLocale,
    :shopperReference,
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
      amount: {Adyen.Checkout.V51.Amount, :t},
      blockedPaymentMethods: [:string],
      browserInfo: {Adyen.Checkout.V51.BrowserInfo, :t},
      channel: {:enum, ["iOS", "Android", "Web"]},
      countryCode: :string,
      enableRealTimeUpdate: :boolean,
      merchantAccount: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperLocale: :string,
      shopperReference: :string,
      store: :string,
      storeFiltrationMode: {:enum, ["exclusive", "inclusive", "skipFilter"]},
      telephoneNumber: :string
    ]
  end
end
