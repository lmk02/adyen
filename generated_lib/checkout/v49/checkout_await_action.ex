defmodule Adyen.Checkout.V49.CheckoutAwaitAction do
  @moduledoc """
  Provides struct and type for a CheckoutAwaitAction
  """

  @type t :: %__MODULE__{
          paymentData: String.t() | nil,
          paymentMethodType: String.t() | nil,
          type: String.t(),
          url: String.t() | nil
        }

  defstruct [:paymentData, :paymentMethodType, :type, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [paymentData: :string, paymentMethodType: :string, type: {:const, "await"}, url: :string]
  end
end
