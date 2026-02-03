defmodule Adyen.Checkout.PixRecurring do
  @moduledoc """
  Provides struct and type for a PixRecurring
  """

  alias Adyen.Checkout.Amount

  @type t :: %__MODULE__{
          billingDate: String.t() | nil,
          businessDayOnly: boolean | nil,
          endsAt: String.t() | nil,
          frequency: String.t() | nil,
          minAmount: Amount.t() | nil,
          originalPspReference: String.t() | nil,
          recurringAmount: Amount.t() | nil,
          recurringStatement: String.t() | nil,
          retryPolicy: boolean | nil,
          startsAt: String.t() | nil
        }

  defstruct [
    :billingDate,
    :businessDayOnly,
    :endsAt,
    :frequency,
    :minAmount,
    :originalPspReference,
    :recurringAmount,
    :recurringStatement,
    :retryPolicy,
    :startsAt
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      billingDate: :string,
      businessDayOnly: :boolean,
      endsAt: :string,
      frequency: {:enum, ["weekly", "monthly", "quarterly", "half-yearly", "yearly"]},
      minAmount: {Amount, :t},
      originalPspReference: :string,
      recurringAmount: {Amount, :t},
      recurringStatement: :string,
      retryPolicy: :boolean,
      startsAt: :string
    ]
  end
end
