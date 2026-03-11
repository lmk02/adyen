defmodule Adyen.Checkout.V68.Mandate do
  @moduledoc """
  Provides struct and type for a Mandate
  """

  @type t :: %__MODULE__{
          amount: String.t(),
          amountRule: String.t() | nil,
          billingAttemptsRule: String.t() | nil,
          billingDay: String.t() | nil,
          count: String.t() | nil,
          endsAt: String.t(),
          frequency: String.t(),
          remarks: String.t() | nil,
          startsAt: String.t() | nil
        }

  defstruct [
    :amount,
    :amountRule,
    :billingAttemptsRule,
    :billingDay,
    :count,
    :endsAt,
    :frequency,
    :remarks,
    :startsAt
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: :string,
      amountRule: {:enum, ["max", "exact"]},
      billingAttemptsRule: {:enum, ["on", "before", "after"]},
      billingDay: :string,
      count: :string,
      endsAt: :string,
      frequency:
        {:enum,
         ["adhoc", "daily", "weekly", "biWeekly", "monthly", "quarterly", "halfYearly", "yearly"]},
      remarks: :string,
      startsAt: :string
    ]
  end
end
