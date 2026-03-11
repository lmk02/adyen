defmodule Adyen.Checkout.V49.ExternalTokenDetails do
  @moduledoc """
  Provides struct and type for a ExternalTokenDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          expiryMonth: String.t() | nil,
          expiryYear: String.t() | nil,
          holderName: String.t() | nil,
          number: String.t() | nil,
          storedPaymentMethodId: String.t(),
          subtype: String.t(),
          type: String.t()
        }

  defstruct [
    :checkoutAttemptId,
    :expiryMonth,
    :expiryYear,
    :holderName,
    :number,
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
      expiryMonth: :string,
      expiryYear: :string,
      holderName: :string,
      number: :string,
      storedPaymentMethodId: :string,
      subtype: {:const, "hilton"},
      type: {:const, "externalToken"}
    ]
  end
end
