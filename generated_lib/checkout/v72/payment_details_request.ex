defmodule Adyen.Checkout.V72.PaymentDetailsRequest do
  @moduledoc """
  Provides struct and type for a PaymentDetailsRequest
  """

  @type t :: %__MODULE__{
          authenticationData: Adyen.Checkout.V72.DetailsRequestAuthenticationData.t() | nil,
          details: Adyen.Checkout.V72.PaymentCompletionDetails.t(),
          paymentData: String.t() | nil,
          threeDSAuthenticationOnly: boolean | nil
        }

  defstruct [:authenticationData, :details, :paymentData, :threeDSAuthenticationOnly]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authenticationData: {Adyen.Checkout.V72.DetailsRequestAuthenticationData, :t},
      details: {Adyen.Checkout.V72.PaymentCompletionDetails, :t},
      paymentData: :string,
      threeDSAuthenticationOnly: :boolean
    ]
  end
end
