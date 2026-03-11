defmodule Adyen.Checkout.V53.CancelOrderResponse do
  @moduledoc """
  Provides struct and type for a CancelOrderResponse
  """

  @type t :: %__MODULE__{pspReference: String.t(), resultCode: String.t()}

  defstruct [:pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [pspReference: :string, resultCode: {:const, "Received"}]
  end
end
