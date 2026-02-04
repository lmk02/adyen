defmodule Adyen.Checkout.SepaDirectDebitDetails do
  @moduledoc """
  Provides struct and type for a SepaDirectDebitDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          dueDate: String.t() | nil,
          iban: String.t(),
          ownerName: String.t(),
          recurringDetailReference: String.t() | nil,
          sdkData: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          transferInstrumentId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :checkoutAttemptId,
    :dueDate,
    :iban,
    :ownerName,
    :recurringDetailReference,
    :sdkData,
    :storedPaymentMethodId,
    :transferInstrumentId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      dueDate: :string,
      iban: :string,
      ownerName: :string,
      recurringDetailReference: :string,
      sdkData: :string,
      storedPaymentMethodId: :string,
      transferInstrumentId: :string,
      type: {:enum, ["sepadirectdebit", "sepadirectdebit_amazonpay"]}
    ]
  end
end
