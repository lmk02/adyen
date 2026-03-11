defmodule Adyen.Checkout.V66.CheckoutThreeDs2FingerPrintAction do
  @moduledoc """
  Provides struct and type for a CheckoutThreeDs2FingerPrintAction
  """

  @type t :: %__MODULE__{
          paymentData: String.t() | nil,
          paymentMethodType: String.t() | nil,
          token: String.t() | nil,
          type: String.t(),
          url: String.t() | nil
        }

  defstruct [:paymentData, :paymentMethodType, :token, :type, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      paymentData: :string,
      paymentMethodType: :string,
      token: :string,
      type: {:const, "threeDS2Fingerprint"},
      url: :string
    ]
  end
end
