defmodule Adyen.Checkout.V52.MerchantRiskIndicator do
  @moduledoc """
  Provides struct and type for a MerchantRiskIndicator
  """

  @type t :: %__MODULE__{
          addressMatch: boolean | nil,
          deliveryAddressIndicator: String.t() | nil,
          deliveryEmail: String.t() | nil,
          deliveryTimeframe: String.t() | nil,
          giftCardAmount: Adyen.Checkout.V52.Amount.t() | nil,
          giftCardCount: integer | nil,
          preOrderDate: DateTime.t() | nil,
          preOrderPurchase: boolean | nil,
          reorderItems: boolean | nil
        }

  defstruct [
    :addressMatch,
    :deliveryAddressIndicator,
    :deliveryEmail,
    :deliveryTimeframe,
    :giftCardAmount,
    :giftCardCount,
    :preOrderDate,
    :preOrderPurchase,
    :reorderItems
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      addressMatch: :boolean,
      deliveryAddressIndicator:
        {:enum,
         [
           "shipToBillingAddress",
           "shipToVerifiedAddress",
           "shipToNewAddress",
           "shipToStore",
           "digitalGoods",
           "goodsNotShipped",
           "other"
         ]},
      deliveryEmail: :string,
      deliveryTimeframe:
        {:enum,
         ["electronicDelivery", "sameDayShipping", "overnightShipping", "twoOrMoreDaysShipping"]},
      giftCardAmount: {Adyen.Checkout.V52.Amount, :t},
      giftCardCount: {:integer, "int32"},
      preOrderDate: {:string, "date-time"},
      preOrderPurchase: :boolean,
      reorderItems: :boolean
    ]
  end
end
