defmodule Adyen.Recurring.RecurringDetailsResult do
  @moduledoc """
  Provides struct and type for a RecurringDetailsResult
  """

  @type t :: %__MODULE__{
          creationDate: DateTime.t() | nil,
          details: [Adyen.Recurring.RecurringDetailWrapper.t()] | nil,
          lastKnownShopperEmail: String.t() | nil,
          shopperReference: String.t() | nil
        }

  defstruct [:creationDate, :details, :lastKnownShopperEmail, :shopperReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      creationDate: {:string, "date-time"},
      details: [{Adyen.Recurring.RecurringDetailWrapper, :t}],
      lastKnownShopperEmail: :string,
      shopperReference: :string
    ]
  end
end
