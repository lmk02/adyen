defmodule Adyen.Checkout.V49.PayWithGoogleDonations do
  @moduledoc """
  Provides struct and type for a PayWithGoogleDonations
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          fundingSource: String.t() | nil,
          googlePayToken: String.t(),
          recurringDetailReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          threeDS2SdkVersion: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :checkoutAttemptId,
    :fundingSource,
    :googlePayToken,
    :recurringDetailReference,
    :storedPaymentMethodId,
    :threeDS2SdkVersion,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      fundingSource: {:enum, ["credit", "debit", "prepaid"]},
      googlePayToken: :string,
      recurringDetailReference: :string,
      storedPaymentMethodId: :string,
      threeDS2SdkVersion: :string,
      type: {:const, "paywithgoogle"}
    ]
  end
end
