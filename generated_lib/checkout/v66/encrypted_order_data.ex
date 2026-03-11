defmodule Adyen.Checkout.V66.EncryptedOrderData do
  @moduledoc """
  Provides struct and type for a EncryptedOrderData
  """

  @type t :: %__MODULE__{orderData: String.t(), pspReference: String.t()}

  defstruct [:orderData, :pspReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [orderData: :string, pspReference: :string]
  end
end
