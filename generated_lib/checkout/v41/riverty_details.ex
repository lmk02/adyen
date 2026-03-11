defmodule Adyen.Checkout.V41.RivertyDetails do
  @moduledoc """
  Provides struct and type for a RivertyDetails
  """

  @type t :: %__MODULE__{
          billingAddress: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          deliveryAddress: String.t() | nil,
          deviceFingerprint: String.t() | nil,
          iban: String.t() | nil,
          personalDetails: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          subtype: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :billingAddress,
    :checkoutAttemptId,
    :deliveryAddress,
    :deviceFingerprint,
    :iban,
    :personalDetails,
    :recurringDetailReference,
    :subtype,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      billingAddress: :string,
      checkoutAttemptId: :string,
      deliveryAddress: :string,
      deviceFingerprint: :string,
      iban: :string,
      personalDetails: :string,
      recurringDetailReference: :string,
      subtype: :string,
      type:
        {:enum, ["riverty", "riverty_account", "riverty_installments", "sepadirectdebit_riverty"]}
    ]
  end
end
