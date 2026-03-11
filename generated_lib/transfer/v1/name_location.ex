defmodule Adyen.Transfer.V1.NameLocation do
  @moduledoc """
  Provides struct and type for a NameLocation
  """

  @type t :: %__MODULE__{
          city: String.t() | nil,
          country: String.t() | nil,
          countryOfOrigin: String.t() | nil,
          name: String.t() | nil,
          rawData: String.t() | nil,
          state: String.t() | nil
        }

  defstruct [:city, :country, :countryOfOrigin, :name, :rawData, :state]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      city: :string,
      country: :string,
      countryOfOrigin: :string,
      name: :string,
      rawData: :string,
      state: :string
    ]
  end
end
