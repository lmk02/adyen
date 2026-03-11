defmodule Adyen.Checkout.V49.LineItem do
  @moduledoc """
  Provides struct and type for a LineItem
  """

  @type t :: %__MODULE__{
          amountExcludingTax: integer | nil,
          amountIncludingTax: integer | nil,
          description: String.t() | nil,
          id: String.t() | nil,
          imageUrl: String.t() | nil,
          itemCategory: String.t() | nil,
          productUrl: String.t() | nil,
          quantity: integer | nil,
          taxAmount: integer | nil,
          taxPercentage: integer | nil
        }

  defstruct [
    :amountExcludingTax,
    :amountIncludingTax,
    :description,
    :id,
    :imageUrl,
    :itemCategory,
    :productUrl,
    :quantity,
    :taxAmount,
    :taxPercentage
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amountExcludingTax: {:integer, "int64"},
      amountIncludingTax: {:integer, "int64"},
      description: :string,
      id: :string,
      imageUrl: :string,
      itemCategory: :string,
      productUrl: :string,
      quantity: {:integer, "int64"},
      taxAmount: {:integer, "int64"},
      taxPercentage: {:integer, "int64"}
    ]
  end
end
