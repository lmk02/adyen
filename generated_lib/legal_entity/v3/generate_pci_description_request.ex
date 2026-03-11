defmodule Adyen.LegalEntity.V3.GeneratePciDescriptionRequest do
  @moduledoc """
  Provides struct and type for a GeneratePciDescriptionRequest
  """

  @type t :: %__MODULE__{additionalSalesChannels: [String.t()] | nil, language: String.t() | nil}

  defstruct [:additionalSalesChannels, :language]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalSalesChannels: [enum: ["eCommerce", "ecomMoto", "pos", "posMoto"]],
      language: :string
    ]
  end
end
