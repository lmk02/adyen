defmodule Adyen.Checkout.V71.LevelTwoThree do
  @moduledoc """
  Provides struct and type for a LevelTwoThree
  """

  @type t :: %__MODULE__{
          customerReferenceNumber: String.t() | nil,
          destination: Adyen.Checkout.V71.Destination.t() | nil,
          dutyAmount: integer | nil,
          freightAmount: integer | nil,
          itemDetailLines: [Adyen.Checkout.V71.ItemDetailLine.t()] | nil,
          orderDate: Date.t() | nil,
          shipFromPostalCode: String.t() | nil,
          totalTaxAmount: integer | nil
        }

  defstruct [
    :customerReferenceNumber,
    :destination,
    :dutyAmount,
    :freightAmount,
    :itemDetailLines,
    :orderDate,
    :shipFromPostalCode,
    :totalTaxAmount
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      customerReferenceNumber: :string,
      destination: {Adyen.Checkout.V71.Destination, :t},
      dutyAmount: {:integer, "int64"},
      freightAmount: {:integer, "int64"},
      itemDetailLines: [{Adyen.Checkout.V71.ItemDetailLine, :t}],
      orderDate: {:string, "date"},
      shipFromPostalCode: :string,
      totalTaxAmount: {:integer, "int64"}
    ]
  end
end
