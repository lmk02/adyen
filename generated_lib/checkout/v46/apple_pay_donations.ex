defmodule Adyen.Checkout.V46.ApplePayDonations do
  @moduledoc """
  Provides struct and type for a ApplePayDonations
  """

  @type t :: %__MODULE__{
          applePayToken: String.t(),
          checkoutAttemptId: String.t() | nil,
          fundingSource: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:applePayToken, :checkoutAttemptId, :fundingSource, :recurringDetailReference, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      applePayToken: :string,
      checkoutAttemptId: :string,
      fundingSource: {:enum, ["credit", "debit", "prepaid"]},
      recurringDetailReference: :string,
      type: {:const, "applepay"}
    ]
  end
end
