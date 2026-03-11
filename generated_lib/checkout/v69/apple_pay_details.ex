defmodule Adyen.Checkout.V69.ApplePayDetails do
  @moduledoc """
  Provides struct and type for a ApplePayDetails
  """

  @type t :: %__MODULE__{
          applePayToken: String.t(),
          checkoutAttemptId: String.t() | nil,
          fundingSource: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          sdkData: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :applePayToken,
    :checkoutAttemptId,
    :fundingSource,
    :recurringDetailReference,
    :sdkData,
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
      sdkData: :string,
      storedPaymentMethodId: :string,
      type: {:const, "applepay"}
    ]
  end
end
