defmodule Adyen.Checkout.V72.CarRental do
  @moduledoc """
  Provides struct and type for a CarRental
  """

  @type t :: %__MODULE__{
          customerServicePhoneNumber: String.t() | nil,
          noShow: boolean | nil,
          pickupInfo: Adyen.Checkout.V72.PickupInfo.t() | nil,
          rateType: String.t() | nil,
          rentalAgreementNumber: String.t() | nil,
          rentalClassId: String.t() | nil,
          rentalDays: integer | nil,
          rentalRate: integer | nil,
          rentalSurcharges: Adyen.Checkout.V72.RentalSurcharges.t() | nil,
          renterName: String.t(),
          returnInfo: Adyen.Checkout.V72.ReturnInfo.t() | nil,
          taxExempt: boolean | nil
        }

  defstruct [
    :customerServicePhoneNumber,
    :noShow,
    :pickupInfo,
    :rateType,
    :rentalAgreementNumber,
    :rentalClassId,
    :rentalDays,
    :rentalRate,
    :rentalSurcharges,
    :renterName,
    :returnInfo,
    :taxExempt
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      customerServicePhoneNumber: :string,
      noShow: :boolean,
      pickupInfo: {Adyen.Checkout.V72.PickupInfo, :t},
      rateType: {:enum, ["daily", "weekly"]},
      rentalAgreementNumber: :string,
      rentalClassId: :string,
      rentalDays: {:integer, "int32"},
      rentalRate: {:integer, "int64"},
      rentalSurcharges: {Adyen.Checkout.V72.RentalSurcharges, :t},
      renterName: :string,
      returnInfo: {Adyen.Checkout.V72.ReturnInfo, :t},
      taxExempt: :boolean
    ]
  end
end
