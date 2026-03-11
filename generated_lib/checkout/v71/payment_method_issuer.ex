defmodule Adyen.Checkout.V71.PaymentMethodIssuer do
  @moduledoc """
  Provides struct and type for a PaymentMethodIssuer
  """

  @type t :: %__MODULE__{disabled: boolean | nil, id: String.t(), name: String.t()}

  defstruct [:disabled, :id, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [disabled: :boolean, id: :string, name: :string]
  end
end
