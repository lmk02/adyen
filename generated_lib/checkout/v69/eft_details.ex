defmodule Adyen.Checkout.V69.EftDetails do
  @moduledoc """
  Provides struct and type for a EftDetails
  """

  @type t :: %__MODULE__{
          bankAccountNumber: String.t() | nil,
          bankCode: String.t() | nil,
          bankLocationId: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          ownerName: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          sdkData: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :bankAccountNumber,
    :bankCode,
    :bankLocationId,
    :checkoutAttemptId,
    :ownerName,
    :recurringDetailReference,
    :sdkData,
    :storedPaymentMethodId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bankAccountNumber: :string,
      bankCode: :string,
      bankLocationId: :string,
      checkoutAttemptId: :string,
      ownerName: :string,
      recurringDetailReference: :string,
      sdkData: :string,
      storedPaymentMethodId: :string,
      type: {:const, "eft_directdebit_CA"}
    ]
  end
end
