defmodule Adyen.Checkout.V65.CheckoutNativeRedirectAction do
  @moduledoc """
  Provides struct and type for a CheckoutNativeRedirectAction
  """

  @type t :: %__MODULE__{
          data: map | nil,
          method: String.t() | nil,
          nativeRedirectData: String.t() | nil,
          paymentData: String.t() | nil,
          paymentMethodType: String.t() | nil,
          type: String.t(),
          url: String.t() | nil
        }

  defstruct [:data, :method, :nativeRedirectData, :paymentData, :paymentMethodType, :type, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: :map,
      method: :string,
      nativeRedirectData: :string,
      paymentData: :string,
      paymentMethodType: :string,
      type: {:const, "nativeRedirect"},
      url: :string
    ]
  end
end
