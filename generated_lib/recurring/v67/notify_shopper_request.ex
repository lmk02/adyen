defmodule Adyen.Recurring.V67.NotifyShopperRequest do
  @moduledoc """
  Provides struct and type for a NotifyShopperRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Recurring.V67.Amount.t(),
          billingDate: String.t() | nil,
          billingSequenceNumber: String.t() | nil,
          displayedReference: String.t() | nil,
          merchantAccount: String.t(),
          recurringDetailReference: String.t() | nil,
          reference: String.t(),
          shopperReference: String.t(),
          storedPaymentMethodId: String.t() | nil
        }

  defstruct [
    :amount,
    :billingDate,
    :billingSequenceNumber,
    :displayedReference,
    :merchantAccount,
    :recurringDetailReference,
    :reference,
    :shopperReference,
    :storedPaymentMethodId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Recurring.V67.Amount, :t},
      billingDate: :string,
      billingSequenceNumber: :string,
      displayedReference: :string,
      merchantAccount: :string,
      recurringDetailReference: :string,
      reference: :string,
      shopperReference: :string,
      storedPaymentMethodId: :string
    ]
  end
end
