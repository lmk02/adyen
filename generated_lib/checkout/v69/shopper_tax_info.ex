defmodule Adyen.Checkout.V69.ShopperTaxInfo do
  @moduledoc """
  Provides struct and type for a ShopperTaxInfo
  """

  @type t :: %__MODULE__{taxCountryCode: String.t(), taxIdentificationNumber: String.t()}

  defstruct [:taxCountryCode, :taxIdentificationNumber]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [taxCountryCode: :string, taxIdentificationNumber: :string]
  end
end
