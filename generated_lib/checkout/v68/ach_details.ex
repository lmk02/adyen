defmodule Adyen.Checkout.V68.AchDetails do
  @moduledoc """
  Provides struct and type for a AchDetails
  """

  @type t :: %__MODULE__{
          accountHolderType: String.t() | nil,
          bankAccountNumber: String.t() | nil,
          bankAccountType: String.t() | nil,
          bankLocationId: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          encryptedBankAccountNumber: String.t() | nil,
          encryptedBankLocationId: String.t() | nil,
          ownerName: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          transferInstrumentId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :accountHolderType,
    :bankAccountNumber,
    :bankAccountType,
    :bankLocationId,
    :checkoutAttemptId,
    :encryptedBankAccountNumber,
    :encryptedBankLocationId,
    :ownerName,
    :recurringDetailReference,
    :storedPaymentMethodId,
    :transferInstrumentId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderType: {:enum, ["business", "personal"]},
      bankAccountNumber: :string,
      bankAccountType:
        {:enum, ["balance", "checking", "deposit", "general", "other", "payment", "savings"]},
      bankLocationId: :string,
      checkoutAttemptId: :string,
      encryptedBankAccountNumber: :string,
      encryptedBankLocationId: :string,
      ownerName: :string,
      recurringDetailReference: :string,
      storedPaymentMethodId: :string,
      transferInstrumentId: :string,
      type: {:enum, ["ach", "ach_plaid"]}
    ]
  end
end
