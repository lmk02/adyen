defmodule Adyen.Checkout.V50.SubMerchantInfoWrapper do
  @moduledoc """
  Provides struct and type for a SubMerchantInfoWrapper
  """

  @type t :: %__MODULE__{SubMerchant: Adyen.Checkout.V50.SubMerchantInfo.t() | nil}

  defstruct [:SubMerchant]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [SubMerchant: {Adyen.Checkout.V50.SubMerchantInfo, :t}]
  end
end
