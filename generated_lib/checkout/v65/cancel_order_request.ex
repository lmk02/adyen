defmodule Adyen.Checkout.V65.CancelOrderRequest do
  @moduledoc """
  Provides struct and type for a CancelOrderRequest
  """

  @type t :: %__MODULE__{
          merchantAccount: String.t(),
          order: Adyen.Checkout.V65.EncryptedOrderData.t()
        }

  defstruct [:merchantAccount, :order]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [merchantAccount: :string, order: {Adyen.Checkout.V65.EncryptedOrderData, :t}]
  end
end
