defmodule Adyen.Recurring.PermitRestriction do
  @moduledoc """
  Provides struct and type for a PermitRestriction
  """

  @type t :: %__MODULE__{
          maxAmount: Adyen.Recurring.Amount.t() | nil,
          singleTransactionLimit: Adyen.Recurring.Amount.t() | nil,
          singleUse: boolean | nil
        }

  defstruct [:maxAmount, :singleTransactionLimit, :singleUse]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      maxAmount: {Adyen.Recurring.Amount, :t},
      singleTransactionLimit: {Adyen.Recurring.Amount, :t},
      singleUse: :boolean
    ]
  end
end
