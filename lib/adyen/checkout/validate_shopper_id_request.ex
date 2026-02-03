defmodule Adyen.Checkout.ValidateShopperIdRequest do
  @moduledoc """
  Provides struct and type for a ValidateShopperIdRequest
  """

  alias Adyen.Checkout.ShopperIdPaymentMethod

  @type t :: %__MODULE__{
          merchantAccount: String.t(),
          paymentMethod: ShopperIdPaymentMethod.t(),
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
      paymentMethod: {ShopperIdPaymentMethod, :t},
      shopperEmail: :string,
      shopperIP: :string,
      shopperReference: :string
    ]
  end
end
