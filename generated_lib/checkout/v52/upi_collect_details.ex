defmodule Adyen.Checkout.V52.UpiCollectDetails do
  @moduledoc """
  Provides struct and type for a UpiCollectDetails
  """

  @type t :: %__MODULE__{
          billingSequenceNumber: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          shopperNotificationReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t(),
          virtualPaymentAddress: String.t() | nil
        }

  defstruct [
    :billingSequenceNumber,
    :checkoutAttemptId,
    :recurringDetailReference,
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
      billingSequenceNumber: :string,
      checkoutAttemptId: :string,
      recurringDetailReference: :string,
      shopperNotificationReference: :string,
      storedPaymentMethodId: :string,
      type: {:const, "upi_collect"},
      virtualPaymentAddress: :string
    ]
  end
end
