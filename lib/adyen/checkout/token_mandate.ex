defmodule Adyen.Checkout.TokenMandate do
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
          providerId: String.t(),
          remarks: String.t() | nil,
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
    :providerId,
    :remarks,
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
      frequency: {:enum, ["adhoc", "daily", "weekly", "biWeekly", "monthly", "quarterly", "halfYearly", "yearly"]},
      mandateId: :string,
      maskedAccountId: :string,
      providerId: :string,
      remarks: :string,
      startsAt: :string,
      status: :string,
      txVariant: :string
    ]
  end
end
