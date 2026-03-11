defmodule Adyen.Checkout.V37.PaymentDetailsRequest do
  @moduledoc """
  Provides struct and type for a PaymentDetailsRequest
  """

  @type t :: %__MODULE__{
          details: Adyen.Checkout.V37.PaymentCompletionDetails.t(),
          paymentData: String.t() | nil
        }

  defstruct [:details, :paymentData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [details: {Adyen.Checkout.V37.PaymentCompletionDetails, :t}, paymentData: :string]
  end
end
