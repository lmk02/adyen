defmodule Adyen.Checkout.V40.VisaCheckoutDetails do
  @moduledoc """
  Provides struct and type for a VisaCheckoutDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          fundingSource: String.t() | nil,
          type: String.t() | nil,
          visaCheckoutCallId: String.t()
        }

  defstruct [:checkoutAttemptId, :fundingSource, :type, :visaCheckoutCallId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      fundingSource: {:enum, ["credit", "debit", "prepaid"]},
      type: {:const, "visacheckout"},
      visaCheckoutCallId: :string
    ]
  end
end
