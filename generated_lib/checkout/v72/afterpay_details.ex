defmodule Adyen.Checkout.V72.AfterpayDetails do
  @moduledoc """
  Provides struct and type for a AfterpayDetails
  """

  @type t :: %__MODULE__{
          billingAddress: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          deliveryAddress: String.t() | nil,
          personalDetails: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          sdkData: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :billingAddress,
    :checkoutAttemptId,
    :deliveryAddress,
    :personalDetails,
    :recurringDetailReference,
    :sdkData,
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
      sdkData: :string,
      storedPaymentMethodId: :string,
      type: {:enum, ["afterpay_default", "afterpaytouch", "afterpay_b2b", "clearpay"]}
    ]
  end
end
