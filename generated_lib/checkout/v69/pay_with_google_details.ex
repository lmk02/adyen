defmodule Adyen.Checkout.V69.PayWithGoogleDetails do
  @moduledoc """
  Provides struct and type for a PayWithGoogleDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          fundingSource: String.t() | nil,
          googlePayToken: String.t(),
          recurringDetailReference: String.t() | nil,
          sdkData: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          threeDS2SdkVersion: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :checkoutAttemptId,
    :fundingSource,
    :googlePayToken,
    :recurringDetailReference,
    :sdkData,
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
      sdkData: :string,
      storedPaymentMethodId: :string,
      threeDS2SdkVersion: :string,
      type: {:const, "paywithgoogle"}
    ]
  end
end
