defmodule Adyen.Checkout.V52.MasterpassDetails do
  @moduledoc """
  Provides struct and type for a MasterpassDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          fundingSource: String.t() | nil,
          masterpassTransactionId: String.t(),
          type: String.t() | nil
        }

  defstruct [:checkoutAttemptId, :fundingSource, :masterpassTransactionId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      fundingSource: {:enum, ["credit", "debit", "prepaid"]},
      masterpassTransactionId: :string,
      type: {:const, "masterpass"}
    ]
  end
end
