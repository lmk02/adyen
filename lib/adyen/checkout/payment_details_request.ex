defmodule Adyen.Checkout.PaymentDetailsRequest do
  @moduledoc """
  Provides struct and type for a PaymentDetailsRequest
  """

  alias Adyen.Checkout.DetailsRequestAuthenticationData
  alias Adyen.Checkout.PaymentCompletionDetails

  @type t :: %__MODULE__{
          authenticationData: DetailsRequestAuthenticationData.t() | nil,
          details: PaymentCompletionDetails.t(),
          paymentData: String.t() | nil,
          threeDSAuthenticationOnly: boolean | nil
        }

  defstruct [:authenticationData, :details, :paymentData, :threeDSAuthenticationOnly]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authenticationData: {DetailsRequestAuthenticationData, :t},
      details: {PaymentCompletionDetails, :t},
      paymentData: :string,
      threeDSAuthenticationOnly: :boolean
    ]
  end
end
