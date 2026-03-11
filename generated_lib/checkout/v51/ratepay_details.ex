defmodule Adyen.Checkout.V51.RatepayDetails do
  @moduledoc """
  Provides struct and type for a RatepayDetails
  """

  @type t :: %__MODULE__{
          billingAddress: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          deliveryAddress: String.t() | nil,
          personalDetails: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :billingAddress,
    :checkoutAttemptId,
    :deliveryAddress,
    :personalDetails,
    :recurringDetailReference,
    :storedPaymentMethodId,
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
      type: {:enum, ["ratepay", "ratepay_directdebit"]}
    ]
  end
end
