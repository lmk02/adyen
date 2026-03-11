defmodule Adyen.Checkout.V64.ApplePayDetails do
  @moduledoc """
  Provides struct and type for a ApplePayDetails
  """

  @type t :: %__MODULE__{
          applePayToken: String.t(),
          checkoutAttemptId: String.t() | nil,
          fundingSource: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :applePayToken,
    :checkoutAttemptId,
    :fundingSource,
    :recurringDetailReference,
    :storedPaymentMethodId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      applePayToken: :string,
      checkoutAttemptId: :string,
      fundingSource: {:enum, ["credit", "debit", "prepaid"]},
      recurringDetailReference: :string,
      storedPaymentMethodId: :string,
      type: {:const, "applepay"}
    ]
  end
end
