defmodule Adyen.Checkout.V41.UpiIntentDetails do
  @moduledoc """
  Provides struct and type for a UpiIntentDetails
  """

  @type t :: %__MODULE__{
          appId: String.t() | nil,
          billingSequenceNumber: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          shopperNotificationReference: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :appId,
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
      appId: :string,
      billingSequenceNumber: :string,
      checkoutAttemptId: :string,
      recurringDetailReference: :string,
      shopperNotificationReference: :string,
      type: {:const, "upi_intent"}
    ]
  end
end
