defmodule Adyen.Checkout.V51.PaypalUpdateOrderResponse do
  @moduledoc """
  Provides struct and type for a PaypalUpdateOrderResponse
  """

  @type t :: %__MODULE__{paymentData: String.t(), status: String.t()}

  defstruct [:paymentData, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [paymentData: :string, status: {:enum, ["error", "success"]}]
  end
end
