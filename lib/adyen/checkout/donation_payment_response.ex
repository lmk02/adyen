defmodule Adyen.Checkout.DonationPaymentResponse do
  @moduledoc """
  Provides struct and type for a DonationPaymentResponse
  """

  alias Adyen.Checkout.Amount
  alias Adyen.Checkout.PaymentResponse

  @type t :: %__MODULE__{
          amount: Amount.t() | nil,
          donationAccount: String.t() | nil,
          id: String.t() | nil,
          merchantAccount: String.t() | nil,
          payment: PaymentResponse.t() | nil,
          reference: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:amount, :donationAccount, :id, :merchantAccount, :payment, :reference, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Amount, :t},
      donationAccount: :string,
      id: :string,
      merchantAccount: :string,
      payment: {PaymentResponse, :t},
      reference: :string,
      status: {:enum, ["completed", "pending", "refused"]}
    ]
  end
end
