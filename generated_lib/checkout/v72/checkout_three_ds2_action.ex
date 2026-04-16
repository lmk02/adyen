defmodule Adyen.Checkout.V72.CheckoutThreeDs2Action do
  @moduledoc """
  Provides struct and type for a CheckoutThreeDs2Action
  """

  @type t :: %__MODULE__{
          authorisationToken: String.t() | nil,
          paymentData: String.t() | nil,
          paymentMethodType: String.t() | nil,
          subtype: String.t() | nil,
          token: String.t() | nil,
          type: String.t(),
          url: String.t() | nil
        }

  defstruct [:authorisationToken, :paymentData, :paymentMethodType, :subtype, :token, :type, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authorisationToken: :string,
      paymentData: :string,
      paymentMethodType: :string,
      subtype: :string,
      token: :string,
      type: {:const, "threeDS2"},
      url: :string
    ]
  end
end
