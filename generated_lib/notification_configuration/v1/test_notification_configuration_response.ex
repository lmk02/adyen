defmodule Adyen.NotificationConfiguration.V1.TestNotificationConfigurationResponse do
  @moduledoc """
  Provides struct and type for a TestNotificationConfigurationResponse
  """

  @type t :: %__MODULE__{
          errorMessages: [String.t()] | nil,
          eventTypes: [String.t()] | nil,
          exchangeMessages: [Adyen.NotificationConfiguration.V1.ExchangeMessageWrapper.t()] | nil,
          notificationId: integer,
          okMessages: [String.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [
    :errorMessages,
    :eventTypes,
    :exchangeMessages,
    :notificationId,
    :okMessages,
    :pspReference,
    :resultCode,
    :submittedAsync
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      errorMessages: [:string],
      eventTypes: [
        enum: [
          "ACCOUNT_CLOSED",
          "ACCOUNT_CREATED",
          "ACCOUNT_FUNDS_BELOW_THRESHOLD",
          "ACCOUNT_HOLDER_CREATED",
          "ACCOUNT_HOLDER_LIMIT_REACHED",
          "ACCOUNT_HOLDER_MIGRATED",
          "ACCOUNT_HOLDER_PAYOUT",
          "ACCOUNT_HOLDER_STATUS_CHANGE",
          "ACCOUNT_HOLDER_STORE_STATUS_CHANGE",
          "ACCOUNT_HOLDER_UPCOMING_DEADLINE",
          "ACCOUNT_HOLDER_UPDATED",
          "ACCOUNT_HOLDER_VERIFICATION",
          "ACCOUNT_UPDATED",
          "BENEFICIARY_SETUP",
          "COMPENSATE_NEGATIVE_BALANCE",
          "DIRECT_DEBIT_INITIATED",
          "FUNDS_MIGRATED",
          "PAYMENT_FAILURE",
          "PENDING_CREDIT",
          "REFUND_FUNDS_TRANSFER",
          "REPORT_AVAILABLE",
          "SCHEDULED_REFUNDS",
          "SCORE_SIGNAL_TRIGGERED",
          "TRANSFER_FUNDS",
          "TRANSFER_NOT_PAIDOUT_TRANSFERS"
        ]
      ],
      exchangeMessages: [{Adyen.NotificationConfiguration.V1.ExchangeMessageWrapper, :t}],
      notificationId: {:integer, "int64"},
      okMessages: [:string],
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean
    ]
  end
end
