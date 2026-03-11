defmodule Adyen.Management.Configuration do
  @moduledoc """
  Provides struct and type for a Configuration
  """

  @type t :: %__MODULE__{
          brand: String.t(),
          commercial: boolean | nil,
          country: [String.t()] | nil,
          currencies: [Adyen.Management.Currency.t()],
          sources: [String.t()] | nil
        }

  defstruct [:brand, :commercial, :country, :currencies, :sources]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      brand: :string,
      commercial: :boolean,
      country: [:string],
      currencies: [{Adyen.Management.Currency, :t}],
      sources: [:string]
    ]
  end
end
