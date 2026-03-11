defmodule Adyen.Checkout.V49.CheckoutSDKAction do
  @moduledoc """
  Provides struct and type for a CheckoutSDKAction
  """

  @type t :: %__MODULE__{
          paymentData: String.t() | nil,
          paymentMethodType: String.t() | nil,
          sdkData: map | nil,
          type: String.t(),
          url: String.t() | nil
        }

  defstruct [:paymentData, :paymentMethodType, :sdkData, :type, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      paymentData: :string,
      paymentMethodType: :string,
      sdkData: :map,
      type: {:enum, ["sdk", "wechatpaySDK"]},
      url: :string
    ]
  end
end
