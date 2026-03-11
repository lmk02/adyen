defmodule Adyen.TestCard.V1.TestCardRange do
  @moduledoc """
  Provides struct and type for a TestCardRange
  """

  @type t :: %__MODULE__{
          address: Adyen.TestCard.V1.AvsAddress.t() | nil,
          cardHolderName: String.t(),
          cvc: String.t() | nil,
          expiryMonth: String.t(),
          expiryYear: integer,
          rangeEnd: String.t(),
          rangeStart: String.t(),
          threeDDirectoryServerResponse: String.t() | nil,
          threeDPassword: String.t() | nil,
          threeDUsername: String.t() | nil
        }

  defstruct [
    :address,
    :cardHolderName,
    :cvc,
    :expiryMonth,
    :expiryYear,
    :rangeEnd,
    :rangeStart,
    :threeDDirectoryServerResponse,
    :threeDPassword,
    :threeDUsername
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.TestCard.V1.AvsAddress, :t},
      cardHolderName: :string,
      cvc: :string,
      expiryMonth:
        {:enum,
         [
           "APRIL",
           "AUGUST",
           "DECEMBER",
           "FEBRUARY",
           "JANUARY",
           "JULY",
           "JUNE",
           "MARCH",
           "MAY",
           "NOVEMBER",
           "OCTOBER",
           "SEPTEMBER"
         ]},
      expiryYear: {:integer, "int32"},
      rangeEnd: :string,
      rangeStart: :string,
      threeDDirectoryServerResponse: {:enum, ["N", "U", "Y"]},
      threeDPassword: :string,
      threeDUsername: :string
    ]
  end
end
