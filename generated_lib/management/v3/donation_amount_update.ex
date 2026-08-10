defmodule Adyen.Management.V3.DonationAmountUpdate do
  @moduledoc """
  Provides struct and type for a DonationAmountUpdate
  """

  @type t :: %__MODULE__{amounts: [integer] | nil, currencyCode: String.t() | nil}

  defstruct [:amounts, :currencyCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amounts: [integer: "int64"], currencyCode: :string]
  end
end
