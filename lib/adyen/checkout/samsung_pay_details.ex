defmodule Adyen.Checkout.SamsungPayDetails do
  @moduledoc """
  Provides struct and type for a SamsungPayDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          fundingSource: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          samsungPayToken: String.t(),
          sdkData: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :checkoutAttemptId,
    :fundingSource,
    :recurringDetailReference,
    :samsungPayToken,
    :sdkData,
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
      sdkData: :string,
      storedPaymentMethodId: :string,
      type: {:const, "samsungpay"}
    ]
  end
end
