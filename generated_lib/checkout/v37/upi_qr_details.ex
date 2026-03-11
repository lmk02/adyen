defmodule Adyen.Checkout.V37.UpiQrDetails do
  @moduledoc """
  Provides struct and type for a UpiQrDetails
  """

  @type t :: %__MODULE__{
          billingSequenceNumber: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          shopperNotificationReference: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :billingSequenceNumber,
    :checkoutAttemptId,
    :recurringDetailReference,
    :shopperNotificationReference,
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
      shopperNotificationReference: :string,
      type: {:const, "upi_qr"}
    ]
  end
end
