defmodule Adyen.Checkout.V53.PaymentMethodsGroup do
  @moduledoc """
  Provides struct and type for a PaymentMethodsGroup
  """

  @type t :: %__MODULE__{
          groupType: String.t() | nil,
          name: String.t() | nil,
          promoted: boolean | nil,
          types: [String.t()] | nil
        }

  defstruct [:groupType, :name, :promoted, :types]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [groupType: :string, name: :string, promoted: :boolean, types: [:string]]
  end
end
