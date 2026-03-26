defmodule Adyen.Checkout.V64.DirectDebitAuDetails do
  @moduledoc """
  Provides struct and type for a DirectDebitAuDetails
  """

  @type t :: %__MODULE__{
          bankAccountNumber: String.t() | nil,
          bankBranchCode: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :bankAccountNumber,
    :bankBranchCode,
    :checkoutAttemptId,
    :recurringDetailReference,
    :storedPaymentMethodId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bankAccountNumber: :string,
      bankBranchCode: :string,
      checkoutAttemptId: :string,
      recurringDetailReference: :string,
      storedPaymentMethodId: :string,
      type: {:const, "directdebit_AU"}
    ]
  end
end
