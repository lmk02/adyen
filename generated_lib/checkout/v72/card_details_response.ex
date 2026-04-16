defmodule Adyen.Checkout.V72.CardDetailsResponse do
  @moduledoc """
  Provides struct and type for a CardDetailsResponse
  """

  @type t :: %__MODULE__{
          brands: [Adyen.Checkout.V72.CardBrandDetails.t()] | nil,
          fundingSource: String.t() | nil,
          isCardCommercial: boolean | nil,
          issuingCountryCode: String.t() | nil
        }

  defstruct [:brands, :fundingSource, :isCardCommercial, :issuingCountryCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      brands: [{Adyen.Checkout.V72.CardBrandDetails, :t}],
      fundingSource: :string,
      isCardCommercial: :boolean,
      issuingCountryCode: :string
    ]
  end
end
