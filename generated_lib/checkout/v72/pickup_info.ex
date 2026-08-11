defmodule Adyen.Checkout.V72.PickupInfo do
  @moduledoc """
  Provides struct and type for a PickupInfo
  """

  @type t :: %__MODULE__{
          city: String.t() | nil,
          countryCode: String.t() | nil,
          date: Date.t() | nil,
          stateOrProvince: String.t() | nil
        }

  defstruct [:city, :countryCode, :date, :stateOrProvince]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [city: :string, countryCode: :string, date: {:string, "date"}, stateOrProvince: :string]
  end
end
