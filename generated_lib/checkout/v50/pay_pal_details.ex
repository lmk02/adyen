defmodule Adyen.Checkout.V50.PayPalDetails do
  @moduledoc """
  Provides struct and type for a PayPalDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          orderID: String.t() | nil,
          payeePreferred: String.t() | nil,
          payerID: String.t() | nil,
          payerSelected: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          subtype: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :checkoutAttemptId,
    :orderID,
    :payeePreferred,
    :payerID,
    :payerSelected,
    :recurringDetailReference,
    :storedPaymentMethodId,
    :subtype,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      checkoutAttemptId: :string,
      orderID: :string,
      payeePreferred: :string,
      payerID: :string,
      payerSelected: :string,
      recurringDetailReference: :string,
      storedPaymentMethodId: :string,
      subtype: {:enum, ["express", "redirect", "sdk"]},
      type: {:const, "paypal"}
    ]
  end
end
