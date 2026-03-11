defmodule Adyen.Checkout.V51.KlarnaDetails do
  @moduledoc """
  Provides struct and type for a KlarnaDetails
  """

  @type t :: %__MODULE__{
          billingAddress: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          deliveryAddress: String.t() | nil,
          personalDetails: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          subtype: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :billingAddress,
    :checkoutAttemptId,
    :deliveryAddress,
    :personalDetails,
    :recurringDetailReference,
    :storedPaymentMethodId,
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
      personalDetails: :string,
      recurringDetailReference: :string,
      storedPaymentMethodId: :string,
      subtype: :string,
      type:
        {:enum,
         [
           "klarna",
           "klarnapayments",
           "klarnapayments_account",
           "klarnapayments_b2b",
           "klarna_paynow",
           "klarna_account",
           "klarna_b2b"
         ]}
    ]
  end
end
