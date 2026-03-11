defmodule Adyen.Checkout.V70.PayUUpiDetails do
  @moduledoc """
  Provides struct and type for a PayUUpiDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          sdkData: String.t() | nil,
          shopperNotificationReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t(),
          virtualPaymentAddress: String.t() | nil
        }

  defstruct [
    :checkoutAttemptId,
    :recurringDetailReference,
    :sdkData,
    :shopperNotificationReference,
    :storedPaymentMethodId,
    :type,
    :virtualPaymentAddress
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      recurringDetailReference: :string,
      sdkData: :string,
      shopperNotificationReference: :string,
      storedPaymentMethodId: :string,
      type: {:const, "payu_IN_upi"},
      virtualPaymentAddress: :string
    ]
  end
end
