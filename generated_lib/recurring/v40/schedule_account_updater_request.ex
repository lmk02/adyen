defmodule Adyen.Recurring.V40.ScheduleAccountUpdaterRequest do
  @moduledoc """
  Provides struct and type for a ScheduleAccountUpdaterRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          card: Adyen.Recurring.V40.Card.t() | nil,
          merchantAccount: String.t(),
          reference: String.t(),
          selectedRecurringDetailReference: String.t() | nil,
          shopperReference: String.t() | nil
        }

  defstruct [
    :additionalData,
    :card,
    :merchantAccount,
    :reference,
    :selectedRecurringDetailReference,
    :shopperReference
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      card: {Adyen.Recurring.V40.Card, :t},
      merchantAccount: :string,
      reference: :string,
      selectedRecurringDetailReference: :string,
      shopperReference: :string
    ]
  end
end
