defmodule Adyen.Checkout.V68.BacsDirectDebitDetails do
  @moduledoc """
  Provides struct and type for a BacsDirectDebitDetails
  """

  @type t :: %__MODULE__{
          bankAccountNumber: String.t() | nil,
          bankLocationId: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          holderName: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          transferInstrumentId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :bankAccountNumber,
    :bankLocationId,
    :checkoutAttemptId,
    :holderName,
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
      bankAccountNumber: :string,
      bankLocationId: :string,
      checkoutAttemptId: :string,
      holderName: :string,
      recurringDetailReference: :string,
      storedPaymentMethodId: :string,
      transferInstrumentId: :string,
      type: {:const, "directdebit_GB"}
    ]
  end
end
