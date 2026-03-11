defmodule Adyen.Checkout.V66.PaymentDetailsRequest do
  @moduledoc """
  Provides struct and type for a PaymentDetailsRequest
  """

  @type t :: %__MODULE__{
          details: Adyen.Checkout.V66.PaymentCompletionDetails.t(),
          paymentData: String.t() | nil,
          threeDSAuthenticationOnly: boolean | nil
        }

  defstruct [:details, :paymentData, :threeDSAuthenticationOnly]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      details: {Adyen.Checkout.V66.PaymentCompletionDetails, :t},
      paymentData: :string,
      threeDSAuthenticationOnly: :boolean
    ]
  end
end
