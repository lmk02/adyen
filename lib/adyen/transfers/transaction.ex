defmodule Adyen.Transfers.Transaction do
  @moduledoc """
  Provides struct and type for a Transaction
  """

  @type t :: %__MODULE__{
          accountHolder: Adyen.Transfers.ResourceReference.t(),
          amount: Adyen.Transfers.Amount.t(),
          balanceAccount: Adyen.Transfers.ResourceReference.t(),
          balancePlatform: String.t(),
          bookingDate: DateTime.t(),
          creationDate: DateTime.t() | nil,
          description: String.t() | nil,
          id: String.t(),
          paymentInstrument: Adyen.Transfers.PaymentInstrument.t() | nil,
          referenceForBeneficiary: String.t() | nil,
          status: String.t(),
          transfer: Adyen.Transfers.TransferView.t() | nil,
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
      accountHolder: {Adyen.Transfers.ResourceReference, :t},
      amount: {Adyen.Transfers.Amount, :t},
      balanceAccount: {Adyen.Transfers.ResourceReference, :t},
      balancePlatform: :string,
      bookingDate: {:string, "date-time"},
      creationDate: {:string, "date-time"},
      description: :string,
      id: :string,
      paymentInstrument: {Adyen.Transfers.PaymentInstrument, :t},
      referenceForBeneficiary: :string,
      status: {:enum, ["booked", "pending"]},
      transfer: {Adyen.Transfers.TransferView, :t},
      valueDate: {:string, "date-time"}
    ]
  end
end
