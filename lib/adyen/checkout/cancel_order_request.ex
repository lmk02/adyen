defmodule Adyen.Checkout.CancelOrderRequest do
  @moduledoc """
  Provides struct and type for a CancelOrderRequest
  """

  alias Adyen.Checkout.EncryptedOrderData

  @type t :: %__MODULE__{
          merchantAccount: String.t(),
          order: EncryptedOrderData.t()
        }

  defstruct [:merchantAccount, :order]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [merchantAccount: :string, order: {EncryptedOrderData, :t}]
  end
end
