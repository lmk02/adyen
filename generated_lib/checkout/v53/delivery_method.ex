defmodule Adyen.Checkout.V53.DeliveryMethod do
  @moduledoc """
  Provides struct and type for a DeliveryMethod
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V53.Amount.t() | nil,
          description: String.t() | nil,
          reference: String.t() | nil,
          selected: boolean | nil,
          type: String.t() | nil
        }

  defstruct [:amount, :description, :reference, :selected, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Checkout.V53.Amount, :t},
      description: :string,
      reference: :string,
      selected: :boolean,
      type: {:const, "Shipping"}
    ]
  end
end
