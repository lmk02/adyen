defmodule Adyen.Checkout.V50.CheckoutQrCodeAction do
  @moduledoc """
  Provides struct and type for a CheckoutQrCodeAction
  """

  @type t :: %__MODULE__{
          expiresAt: String.t() | nil,
          paymentData: String.t() | nil,
          paymentMethodType: String.t() | nil,
          qrCodeData: String.t() | nil,
          type: String.t(),
          url: String.t() | nil
        }

  defstruct [:expiresAt, :paymentData, :paymentMethodType, :qrCodeData, :type, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      expiresAt: :string,
      paymentData: :string,
      paymentMethodType: :string,
      qrCodeData: :string,
      type: {:const, "qrCode"},
      url: :string
    ]
  end
end
