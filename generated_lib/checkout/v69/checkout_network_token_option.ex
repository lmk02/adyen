defmodule Adyen.Checkout.V69.CheckoutNetworkTokenOption do
  @moduledoc """
  Provides struct and type for a CheckoutNetworkTokenOption
  """

  @type t :: %__MODULE__{includeCryptogram: boolean | nil, useNetworkToken: boolean | nil}

  defstruct [:includeCryptogram, :useNetworkToken]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [includeCryptogram: :boolean, useNetworkToken: :boolean]
  end
end
