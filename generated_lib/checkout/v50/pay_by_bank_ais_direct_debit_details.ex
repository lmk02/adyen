defmodule Adyen.Checkout.V50.PayByBankAISDirectDebitDetails do
  @moduledoc """
  Provides struct and type for a PayByBankAISDirectDebitDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t()
        }

  defstruct [:checkoutAttemptId, :recurringDetailReference, :storedPaymentMethodId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      recurringDetailReference: :string,
      storedPaymentMethodId: :string,
      type: {:const, "paybybank_AIS_DD"}
    ]
  end
end
