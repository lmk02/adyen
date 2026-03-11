defmodule Adyen.Checkout.V71.UpiCollectDetails do
  @moduledoc """
  Provides struct and type for a UpiCollectDetails
  """

  @type t :: %__MODULE__{
          billingSequenceNumber: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          sdkData: String.t() | nil,
          shopperNotificationReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t(),
          virtualPaymentAddress: String.t() | nil
        }

  defstruct [
    :billingSequenceNumber,
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
      billingSequenceNumber: :string,
      checkoutAttemptId: :string,
      recurringDetailReference: :string,
      sdkData: :string,
      shopperNotificationReference: :string,
      storedPaymentMethodId: :string,
      type: {:const, "upi_collect"},
      virtualPaymentAddress: :string
    ]
  end
end
