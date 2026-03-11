defmodule Adyen.Capital.V1.GetDynamicOffersResponse do
  @moduledoc """
  Provides struct and type for a GetDynamicOffersResponse
  """

  @type t :: %__MODULE__{dynamicOffers: [Adyen.Capital.V1.DynamicOffer.t()]}

  defstruct [:dynamicOffers]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [dynamicOffers: [{Adyen.Capital.V1.DynamicOffer, :t}]]
  end
end
