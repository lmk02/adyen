defmodule Adyen.Checkout.V71.UpiQrDetails do
  @moduledoc """
  Provides struct and type for a UpiQrDetails
  """

  @type t :: %__MODULE__{
          billingSequenceNumber: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          sdkData: String.t() | nil,
          shopperNotificationReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :billingSequenceNumber,
    :checkoutAttemptId,
    :recurringDetailReference,
    :sdkData,
    :shopperNotificationReference,
    :storedPaymentMethodId,
    :type
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
      type: {:const, "upi_qr"}
    ]
  end
end
