defmodule Adyen.Checkout.V37.GooglePayDetails do
  @moduledoc """
  Provides struct and type for a GooglePayDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          fundingSource: String.t() | nil,
          googlePayCardNetwork: String.t() | nil,
          googlePayToken: String.t(),
          recurringDetailReference: String.t() | nil,
          threeDS2SdkVersion: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :checkoutAttemptId,
    :fundingSource,
    :googlePayCardNetwork,
    :googlePayToken,
    :recurringDetailReference,
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
      googlePayCardNetwork: :string,
      googlePayToken: :string,
      recurringDetailReference: :string,
      threeDS2SdkVersion: :string,
      type: {:const, "googlepay"}
    ]
  end
end
