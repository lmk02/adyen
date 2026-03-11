defmodule Adyen.BinLookup.V52.ThreeDs2CardRangeDetail do
  @moduledoc """
  Provides struct and type for a ThreeDs2CardRangeDetail
  """

  @type t :: %__MODULE__{
          acsInfoInd: [String.t()] | nil,
          brandCode: String.t() | nil,
          endRange: String.t() | nil,
          startRange: String.t() | nil,
          threeDS2Version: String.t() | nil,
          threeDSMethodURL: String.t() | nil
        }

  defstruct [:acsInfoInd, :brandCode, :endRange, :startRange, :threeDS2Version, :threeDSMethodURL]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      acsInfoInd: [:string],
      brandCode: :string,
      endRange: :string,
      startRange: :string,
      threeDS2Version: :string,
      threeDSMethodURL: :string
    ]
  end
end
