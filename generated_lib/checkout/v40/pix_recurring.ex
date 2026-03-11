defmodule Adyen.Checkout.V40.PixRecurring do
  @moduledoc """
  Provides struct and type for a PixRecurring
  """

  @type t :: %__MODULE__{
          billingDate: String.t() | nil,
          businessDayOnly: boolean | nil,
          endsAt: String.t() | nil,
          frequency: String.t() | nil,
          minAmount: Adyen.Checkout.V40.Amount.t() | nil,
          originalPspReference: String.t() | nil,
          recurringAmount: Adyen.Checkout.V40.Amount.t() | nil,
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
      minAmount: {Adyen.Checkout.V40.Amount, :t},
      originalPspReference: :string,
      recurringAmount: {Adyen.Checkout.V40.Amount, :t},
      recurringStatement: :string,
      retryPolicy: :boolean,
      startsAt: :string
    ]
  end
end
