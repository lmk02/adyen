defmodule Adyen.Checkout.V71.Destination do
  @moduledoc """
  Provides struct and type for a Destination
  """

  @type t :: %__MODULE__{
          countryCode: String.t() | nil,
          postalCode: String.t() | nil,
          stateOrProvince: String.t() | nil
        }

  defstruct [:countryCode, :postalCode, :stateOrProvince]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [countryCode: :string, postalCode: :string, stateOrProvince: :string]
  end
end
