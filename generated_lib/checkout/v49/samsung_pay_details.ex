defmodule Adyen.Checkout.V49.SamsungPayDetails do
  @moduledoc """
  Provides struct and type for a SamsungPayDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          fundingSource: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          samsungPayToken: String.t(),
          storedPaymentMethodId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :checkoutAttemptId,
    :fundingSource,
    :recurringDetailReference,
    :samsungPayToken,
    :storedPaymentMethodId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      fundingSource: {:enum, ["credit", "debit", "prepaid"]},
      recurringDetailReference: :string,
      samsungPayToken: :string,
      storedPaymentMethodId: :string,
      type: {:const, "samsungpay"}
    ]
  end
end
