defmodule Adyen.Checkout.V71.ReturnInfo do
  @moduledoc """
  Provides struct and type for a ReturnInfo
  """

  @type t :: %__MODULE__{
          city: String.t() | nil,
          countryCode: String.t() | nil,
          date: Date.t() | nil,
          locationId: String.t() | nil,
          stateOrProvince: String.t() | nil
        }

  defstruct [:city, :countryCode, :date, :locationId, :stateOrProvince]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      city: :string,
      countryCode: :string,
      date: {:string, "date"},
      locationId: :string,
      stateOrProvince: :string
    ]
  end
end
