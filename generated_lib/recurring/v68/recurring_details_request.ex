defmodule Adyen.Recurring.V68.RecurringDetailsRequest do
  @moduledoc """
  Provides struct and type for a RecurringDetailsRequest
  """

  @type t :: %__MODULE__{
          merchantAccount: String.t(),
          recurring: Adyen.Recurring.V68.Recurring.t() | nil,
          shopperReference: String.t()
        }

  defstruct [:merchantAccount, :recurring, :shopperReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantAccount: :string,
      recurring: {Adyen.Recurring.V68.Recurring, :t},
      shopperReference: :string
    ]
  end
end
