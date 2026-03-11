defmodule Adyen.BinLookup.V50.ThreeDs2CardRangeDetail do
  @moduledoc """
  Provides struct and type for a ThreeDs2CardRangeDetail
  """

  @type t :: %__MODULE__{
          brandCode: String.t() | nil,
          endRange: String.t() | nil,
          startRange: String.t() | nil,
          threeDS2Version: String.t() | nil,
          threeDSMethodURL: String.t() | nil
        }

  defstruct [:brandCode, :endRange, :startRange, :threeDS2Version, :threeDSMethodURL]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      brandCode: :string,
      endRange: :string,
      startRange: :string,
      threeDS2Version: :string,
      threeDSMethodURL: :string
    ]
  end
end
