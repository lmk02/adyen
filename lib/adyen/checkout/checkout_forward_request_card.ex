defmodule Adyen.Checkout.CheckoutForwardRequestCard do
  @moduledoc """
  Provides struct and type for a CheckoutForwardRequestCard
  """

  @type t :: %__MODULE__{
          cvc: String.t() | nil,
          encryptedCardNumber: String.t() | nil,
          encryptedExpiryMonth: String.t() | nil,
          encryptedExpiryYear: String.t() | nil,
          encryptedSecurityCode: String.t() | nil,
          expiryMonth: String.t() | nil,
          expiryYear: String.t() | nil,
          holderName: String.t() | nil,
          number: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :cvc,
    :encryptedCardNumber,
    :encryptedExpiryMonth,
    :encryptedExpiryYear,
    :encryptedSecurityCode,
    :expiryMonth,
    :expiryYear,
    :holderName,
    :number,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cvc: :string,
      encryptedCardNumber: :string,
      encryptedExpiryMonth: :string,
      encryptedExpiryYear: :string,
      encryptedSecurityCode: :string,
      expiryMonth: :string,
      expiryYear: :string,
      holderName: :string,
      number: :string,
      type: {:const, "scheme"}
    ]
  end
end
