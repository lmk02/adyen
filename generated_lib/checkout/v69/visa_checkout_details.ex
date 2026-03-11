defmodule Adyen.Checkout.V69.VisaCheckoutDetails do
  @moduledoc """
  Provides struct and type for a VisaCheckoutDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          fundingSource: String.t() | nil,
          sdkData: String.t() | nil,
          type: String.t() | nil,
          visaCheckoutCallId: String.t()
        }

  defstruct [:checkoutAttemptId, :fundingSource, :sdkData, :type, :visaCheckoutCallId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      fundingSource: {:enum, ["credit", "debit", "prepaid"]},
      sdkData: :string,
      type: {:const, "visacheckout"},
      visaCheckoutCallId: :string
    ]
  end
end
