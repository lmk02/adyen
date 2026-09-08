defmodule Adyen.Management.V3.DonationAmount do
  @moduledoc """
  Provides struct and type for a DonationAmount
  """

  @type t :: %__MODULE__{amounts: [integer], currencyCode: String.t()}

  defstruct [:amounts, :currencyCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amounts: [integer: "int64"], currencyCode: :string]
  end
end
