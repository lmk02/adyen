defmodule Adyen.Checkout.V70.LineItem do
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
          size: String.t() | nil,
          sku: String.t() | nil,
          taxAmount: integer | nil,
          taxPercentage: integer | nil,
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
    :size,
    :sku,
    :taxAmount,
    :taxPercentage,
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
      size: :string,
      sku: :string,
      taxAmount: {:integer, "int64"},
      taxPercentage: {:integer, "int64"},
      upc: :string
    ]
  end
end
