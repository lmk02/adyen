defmodule Adyen.Checkout.V40.SepaDirectDebitDonations do
  @moduledoc """
  Provides struct and type for a SepaDirectDebitDonations
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:checkoutAttemptId, :recurringDetailReference, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      recurringDetailReference: :string,
      type: {:const, "sepadirectdebit"}
    ]
  end
end
