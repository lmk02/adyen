defmodule Adyen.Recurring.V49.PermitRestriction do
  @moduledoc """
  Provides struct and type for a PermitRestriction
  """

  @type t :: %__MODULE__{
          maxAmount: Adyen.Recurring.V49.Amount.t() | nil,
          singleTransactionLimit: Adyen.Recurring.V49.Amount.t() | nil,
          singleUse: boolean | nil
        }

  defstruct [:maxAmount, :singleTransactionLimit, :singleUse]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      maxAmount: {Adyen.Recurring.V49.Amount, :t},
      singleTransactionLimit: {Adyen.Recurring.V49.Amount, :t},
      singleUse: :boolean
    ]
  end
end
