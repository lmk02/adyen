defmodule Adyen.Checkout.V71.ShopperTaxInfo do
  @moduledoc """
  Provides struct and type for a ShopperTaxInfo
  """

  @type t :: %__MODULE__{taxId: String.t(), taxIdCountryCode: String.t()}

  defstruct [:taxId, :taxIdCountryCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [taxId: :string, taxIdCountryCode: :string]
  end
end
