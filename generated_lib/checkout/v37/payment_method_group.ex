defmodule Adyen.Checkout.V37.PaymentMethodGroup do
  @moduledoc """
  Provides struct and type for a PaymentMethodGroup
  """

  @type t :: %__MODULE__{
          name: String.t() | nil,
          paymentMethodData: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:name, :paymentMethodData, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [name: :string, paymentMethodData: :string, type: :string]
  end
end
