defmodule Adyen.Transfer.V4.Transaction do
  @moduledoc """
  Provides struct and type for a Transaction
  """

  @type t :: %__MODULE__{
          accountHolder: Adyen.Transfer.V4.ResourceReference.t(),
          amount: Adyen.Transfer.V4.Amount.t(),
          balanceAccount: Adyen.Transfer.V4.ResourceReference.t(),
          balancePlatform: String.t(),
          bookingDate: DateTime.t(),
          creationDate: DateTime.t() | nil,
          description: String.t() | nil,
          id: String.t(),
          paymentInstrument: Adyen.Transfer.V4.PaymentInstrument.t() | nil,
          referenceForBeneficiary: String.t() | nil,
          status: String.t(),
          transfer: Adyen.Transfer.V4.TransferView.t() | nil,
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
      accountHolder: {Adyen.Transfer.V4.ResourceReference, :t},
      amount: {Adyen.Transfer.V4.Amount, :t},
      balanceAccount: {Adyen.Transfer.V4.ResourceReference, :t},
      balancePlatform: :string,
      bookingDate: {:string, "date-time"},
      creationDate: {:string, "date-time"},
      description: :string,
      id: :string,
      paymentInstrument: {Adyen.Transfer.V4.PaymentInstrument, :t},
      referenceForBeneficiary: :string,
      status: {:enum, ["booked", "pending"]},
      transfer: {Adyen.Transfer.V4.TransferView, :t},
      valueDate: {:string, "date-time"}
    ]
  end
end
