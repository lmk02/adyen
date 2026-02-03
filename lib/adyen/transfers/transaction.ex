defmodule Adyen.Transfers.Transaction do
  @moduledoc """
  Provides struct and type for a Transaction
  """

  alias Adyen.Transfers.Amount
  alias Adyen.Transfers.PaymentInstrument
  alias Adyen.Transfers.ResourceReference
  alias Adyen.Transfers.TransferView

  @type t :: %__MODULE__{
          accountHolder: ResourceReference.t(),
          amount: Amount.t(),
          balanceAccount: ResourceReference.t(),
          balancePlatform: String.t(),
          bookingDate: DateTime.t(),
          creationDate: DateTime.t() | nil,
          description: String.t() | nil,
          id: String.t(),
          paymentInstrument: PaymentInstrument.t() | nil,
          referenceForBeneficiary: String.t() | nil,
          status: String.t(),
          transfer: TransferView.t() | nil,
          valueDate: DateTime.t()
        }

  defstruct [
    :accountHolder,
    :amount,
    :balanceAccount,
    :balancePlatform,
    :bookingDate,
    :creationDate,
    :description,
    :id,
    :paymentInstrument,
    :referenceForBeneficiary,
    :status,
    :transfer,
    :valueDate
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {ResourceReference, :t},
      amount: {Amount, :t},
      balanceAccount: {ResourceReference, :t},
      balancePlatform: :string,
      bookingDate: {:string, "date-time"},
      creationDate: {:string, "date-time"},
      description: :string,
      id: :string,
      paymentInstrument: {PaymentInstrument, :t},
      referenceForBeneficiary: :string,
      status: {:enum, ["booked", "pending"]},
      transfer: {TransferView, :t},
      valueDate: {:string, "date-time"}
    ]
  end
end
