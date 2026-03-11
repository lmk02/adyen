defmodule Adyen.LegalEntity.CalculatePciStatusRequest do
  @moduledoc """
  Provides struct and type for a CalculatePciStatusRequest
  """

  @type t :: %__MODULE__{additionalSalesChannels: [String.t()] | nil}

  defstruct [:additionalSalesChannels]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [additionalSalesChannels: [enum: ["eCommerce", "ecomMoto", "pos", "posMoto"]]]
  end
end
