defmodule Adyen.Checkout.V51.CardDetailsRequest do
  @moduledoc """
  Provides struct and type for a CardDetailsRequest
  """

  @type t :: %__MODULE__{
          cardNumber: String.t() | nil,
          countryCode: String.t() | nil,
          encryptedCardNumber: String.t() | nil,
          merchantAccount: String.t(),
          supportedBrands: [String.t()] | nil
        }

  defstruct [:cardNumber, :countryCode, :encryptedCardNumber, :merchantAccount, :supportedBrands]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardNumber: :string,
      countryCode: :string,
      encryptedCardNumber: :string,
      merchantAccount: :string,
      supportedBrands: [:string]
    ]
  end
end
