defmodule Adyen.BinLookup.V40.ThreeDSAvailabilityRequest do
  @moduledoc """
  Provides struct and type for a ThreeDSAvailabilityRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          brands: [String.t()] | nil,
          cardNumber: String.t() | nil,
          merchantAccount: String.t(),
          recurringDetailReference: String.t() | nil,
          shopperReference: String.t() | nil
        }

  defstruct [
    :additionalData,
    :brands,
    :cardNumber,
    :merchantAccount,
    :recurringDetailReference,
    :shopperReference
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      brands: [:string],
      cardNumber: :string,
      merchantAccount: :string,
      recurringDetailReference: :string,
      shopperReference: :string
    ]
  end
end
