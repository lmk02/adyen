defmodule Adyen.Transfer.V3.Address do
  @moduledoc """
  Provides struct and type for a Address
  """

  @type t :: %__MODULE__{
          city: String.t() | nil,
          country: String.t(),
          line1: String.t() | nil,
          line2: String.t() | nil,
          postalCode: String.t() | nil,
          stateOrProvince: String.t() | nil
        }

  defstruct [:city, :country, :line1, :line2, :postalCode, :stateOrProvince]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      city: :string,
      country: :string,
      line1: :string,
      line2: :string,
      postalCode: :string,
      stateOrProvince: :string
    ]
  end
end
