defmodule Adyen.Payment.V68.MerchantRiskIndicator do
  @moduledoc """
  Provides struct and type for a MerchantRiskIndicator
  """

  @type t :: %__MODULE__{
          addressMatch: boolean | nil,
          deliveryAddressIndicator: String.t() | nil,
          deliveryEmail: String.t() | nil,
          deliveryEmailAddress: String.t() | nil,
          deliveryTimeframe: String.t() | nil,
          giftCardAmount: Adyen.Payment.V68.Amount.t() | nil,
          giftCardCount: integer | nil,
          giftCardCurr: String.t() | nil,
          preOrderDate: DateTime.t() | nil,
          preOrderPurchase: boolean | nil,
          preOrderPurchaseInd: String.t() | nil,
          reorderItems: boolean | nil,
          reorderItemsInd: String.t() | nil,
          shipIndicator: String.t() | nil
        }

  defstruct [
    :addressMatch,
    :deliveryAddressIndicator,
    :deliveryEmail,
    :deliveryEmailAddress,
    :deliveryTimeframe,
    :giftCardAmount,
    :giftCardCount,
    :giftCardCurr,
    :preOrderDate,
    :preOrderPurchase,
    :preOrderPurchaseInd,
    :reorderItems,
    :reorderItemsInd,
    :shipIndicator
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
      deliveryEmailAddress: :string,
      deliveryTimeframe:
        {:enum,
         ["electronicDelivery", "sameDayShipping", "overnightShipping", "twoOrMoreDaysShipping"]},
      giftCardAmount: {Adyen.Payment.V68.Amount, :t},
      giftCardCount: {:integer, "int32"},
      giftCardCurr: :string,
      preOrderDate: {:string, "date-time"},
      preOrderPurchase: :boolean,
      preOrderPurchaseInd: :string,
      reorderItems: :boolean,
      reorderItemsInd: :string,
      shipIndicator: :string
    ]
  end
end
