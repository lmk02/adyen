defmodule Adyen.Checkout.DonationPaymentResponse do
  @moduledoc """
  Provides struct and type for a DonationPaymentResponse
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.Amount.t() | nil,
          donationAccount: String.t() | nil,
          id: String.t() | nil,
          merchantAccount: String.t() | nil,
          payment: Adyen.Checkout.PaymentResponse.t() | nil,
          reference: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:amount, :donationAccount, :id, :merchantAccount, :payment, :reference, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Checkout.Amount, :t},
      donationAccount: :string,
      id: :string,
      merchantAccount: :string,
      payment: {Adyen.Checkout.PaymentResponse, :t},
      reference: :string,
      status: {:enum, ["completed", "pending", "refused"]}
    ]
  end
end
