defmodule Adyen.Checkout.V40.ApplePaySessionResponse do
  @moduledoc """
  Provides struct and type for a ApplePaySessionResponse
  """

  @type t :: %__MODULE__{data: String.t()}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: :string]
  end
end
