defmodule Adyen.Checkout.V71.TokenMandate do
  @moduledoc """
  Provides struct and type for a TokenMandate
  """

  @type t :: %__MODULE__{
          accountIdType: String.t() | nil,
          amount: String.t(),
          amountRule: String.t() | nil,
          billingAttemptsRule: String.t() | nil,
          billingDay: String.t() | nil,
          count: String.t() | nil,
          currency: String.t(),
          endsAt: String.t(),
          frequency: String.t(),
          mandateId: String.t(),
          maskedAccountId: String.t() | nil,
          minAmount: String.t() | nil,
          providerId: String.t(),
          recurringAmount: String.t() | nil,
          recurringStatement: String.t() | nil,
          remarks: String.t() | nil,
          retryPolicy: String.t() | nil,
          startsAt: String.t() | nil,
          status: String.t(),
          txVariant: String.t()
        }

  defstruct [
    :accountIdType,
    :amount,
    :amountRule,
    :billingAttemptsRule,
    :billingDay,
    :count,
    :currency,
    :endsAt,
    :frequency,
    :mandateId,
    :maskedAccountId,
    :minAmount,
    :providerId,
    :recurringAmount,
    :recurringStatement,
    :remarks,
    :retryPolicy,
    :startsAt,
    :status,
    :txVariant
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountIdType: :string,
      amount: :string,
      amountRule: {:enum, ["max", "exact"]},
      billingAttemptsRule: {:enum, ["on", "before", "after"]},
      billingDay: :string,
      count: :string,
      currency: :string,
      endsAt: :string,
      frequency:
        {:enum,
         ["adhoc", "daily", "weekly", "biWeekly", "monthly", "quarterly", "halfYearly", "yearly"]},
      mandateId: :string,
      maskedAccountId: :string,
      minAmount: :string,
      providerId: :string,
      recurringAmount: :string,
      recurringStatement: :string,
      remarks: :string,
      retryPolicy: {:enum, ["true", "false"]},
      startsAt: :string,
      status: :string,
      txVariant: :string
    ]
  end
end
