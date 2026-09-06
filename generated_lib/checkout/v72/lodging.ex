defmodule Adyen.Checkout.V72.Lodging do
  @moduledoc """
  Provides struct and type for a Lodging
  """

  @type t :: %__MODULE__{
          checkInDate: Date.t() | nil,
          checkOutDate: Date.t() | nil,
          customerServicePhoneNumber: String.t() | nil,
          fireSafetyCompliance: boolean | nil,
          folio: Adyen.Checkout.V72.Folio.t() | nil,
          foodBeverageCharges: integer | nil,
          lodgingChargeType: String.t() | nil,
          noShow: boolean | nil,
          prepaidExpenses: integer | nil,
          propertyPhoneNumber: String.t() | nil,
          renterName: String.t() | nil,
          rooms: [Adyen.Checkout.V72.Room.t()] | nil,
          totalRoomTax: integer | nil,
          totalTax: integer | nil
        }

  defstruct [
    :checkInDate,
    :checkOutDate,
    :customerServicePhoneNumber,
    :fireSafetyCompliance,
    :folio,
    :foodBeverageCharges,
    :lodgingChargeType,
    :noShow,
    :prepaidExpenses,
    :propertyPhoneNumber,
    :renterName,
    :rooms,
    :totalRoomTax,
    :totalTax
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkInDate: {:string, "date"},
      checkOutDate: {:string, "date"},
      customerServicePhoneNumber: :string,
      fireSafetyCompliance: :boolean,
      folio: {Adyen.Checkout.V72.Folio, :t},
      foodBeverageCharges: {:integer, "int64"},
      lodgingChargeType: {:enum, ["advanceDeposit", "noShow", "stay"]},
      noShow: :boolean,
      prepaidExpenses: {:integer, "int64"},
      propertyPhoneNumber: :string,
      renterName: :string,
      rooms: [{Adyen.Checkout.V72.Room, :t}],
      totalRoomTax: {:integer, "int64"},
      totalTax: {:integer, "int64"}
    ]
  end
end
