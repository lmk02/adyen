defmodule Adyen.Checkout.V53.OpenInvoiceDetails do
  @moduledoc """
  Provides struct and type for a OpenInvoiceDetails
  """

  @type t :: %__MODULE__{
          billingAddress: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          deliveryAddress: String.t() | nil,
          personalDetails: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :billingAddress,
    :checkoutAttemptId,
    :deliveryAddress,
    :personalDetails,
    :recurringDetailReference,
    :storedPaymentMethodId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      billingAddress: :string,
      checkoutAttemptId: :string,
      deliveryAddress: :string,
      personalDetails: :string,
      recurringDetailReference: :string,
      storedPaymentMethodId: :string,
      type: {:enum, ["openinvoice", "afterpay_directdebit", "atome_pos"]}
    ]
  end
end
