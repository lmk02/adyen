defmodule Adyen.Checkout.V72.LineItem do
  @moduledoc """
  Provides struct and type for a LineItem
  """

  @type t :: %__MODULE__{
          amountExcludingTax: integer | nil,
          amountIncludingTax: integer | nil,
          brand: String.t() | nil,
          color: String.t() | nil,
          description: String.t() | nil,
          id: String.t() | nil,
          imageUrl: String.t() | nil,
          itemCategory: String.t() | nil,
          manufacturer: String.t() | nil,
          marketplaceSellerId: String.t() | nil,
          productUrl: String.t() | nil,
          quantity: integer | nil,
          receiverEmail: String.t() | nil,
          returnShippingCompany: String.t() | nil,
          returnTrackingNumber: String.t() | nil,
          returnTrackingUri: String.t() | nil,
          shippingCompany: String.t() | nil,
          shippingMethod: String.t() | nil,
          size: String.t() | nil,
          sku: String.t() | nil,
          taxAmount: integer | nil,
          taxPercentage: integer | nil,
          trackingNumber: String.t() | nil,
          trackingUri: String.t() | nil,
          upc: String.t() | nil
        }

  defstruct [
    :amountExcludingTax,
    :amountIncludingTax,
    :brand,
    :color,
    :description,
    :id,
    :imageUrl,
    :itemCategory,
    :manufacturer,
    :marketplaceSellerId,
    :productUrl,
    :quantity,
    :receiverEmail,
    :returnShippingCompany,
    :returnTrackingNumber,
    :returnTrackingUri,
    :shippingCompany,
    :shippingMethod,
    :size,
    :sku,
    :taxAmount,
    :taxPercentage,
    :trackingNumber,
    :trackingUri,
    :upc
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amountExcludingTax: {:integer, "int64"},
      amountIncludingTax: {:integer, "int64"},
      brand: :string,
      color: :string,
      description: :string,
      id: :string,
      imageUrl: :string,
      itemCategory: :string,
      manufacturer: :string,
      marketplaceSellerId: :string,
      productUrl: :string,
      quantity: {:integer, "int64"},
      receiverEmail: :string,
      returnShippingCompany: :string,
      returnTrackingNumber: :string,
      returnTrackingUri: :string,
      shippingCompany: :string,
      shippingMethod: :string,
      size: :string,
      sku: :string,
      taxAmount: {:integer, "int64"},
      taxPercentage: {:integer, "int64"},
      trackingNumber: :string,
      trackingUri: :string,
      upc: :string
    ]
  end
end
