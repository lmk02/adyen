defmodule Adyen.Checkout.V69.ValidateShopperIdRequest do
  @moduledoc """
  Provides struct and type for a ValidateShopperIdRequest
  """

  @type t :: %__MODULE__{
          merchantAccount: String.t(),
          paymentMethod: Adyen.Checkout.V69.ShopperIdPaymentMethod.t(),
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperReference: String.t() | nil
        }

  defstruct [:merchantAccount, :paymentMethod, :shopperEmail, :shopperIP, :shopperReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantAccount: :string,
      paymentMethod: {Adyen.Checkout.V69.ShopperIdPaymentMethod, :t},
      shopperEmail: :string,
      shopperIP: :string,
      shopperReference: :string
    ]
  end
end
