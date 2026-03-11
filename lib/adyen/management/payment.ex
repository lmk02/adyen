defmodule Adyen.Management.Payment do
  @moduledoc """
  Provides struct and type for a Payment
  """

  @type t :: %__MODULE__{
          contactlessCurrency: String.t() | nil,
          hideMinorUnitsInCurrencies: [String.t()] | nil
        }

  defstruct [:contactlessCurrency, :hideMinorUnitsInCurrencies]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [contactlessCurrency: :string, hideMinorUnitsInCurrencies: [:string]]
  end
end
