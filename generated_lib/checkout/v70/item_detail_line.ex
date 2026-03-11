defmodule Adyen.Checkout.V70.ItemDetailLine do
  @moduledoc """
  Provides struct and type for a ItemDetailLine
  """

  @type t :: %__MODULE__{
          commodityCode: String.t() | nil,
          description: String.t() | nil,
          discountAmount: integer | nil,
          productCode: String.t() | nil,
          quantity: integer | nil,
          totalAmount: integer | nil,
          unitOfMeasure: String.t() | nil,
          unitPrice: integer | nil
        }

  defstruct [
    :commodityCode,
    :description,
    :discountAmount,
    :productCode,
    :quantity,
    :totalAmount,
    :unitOfMeasure,
    :unitPrice
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      commodityCode: :string,
      description: :string,
      discountAmount: {:integer, "int64"},
      productCode: :string,
      quantity: {:integer, "int64"},
      totalAmount: {:integer, "int64"},
      unitOfMeasure: :string,
      unitPrice: {:integer, "int64"}
    ]
  end
end
