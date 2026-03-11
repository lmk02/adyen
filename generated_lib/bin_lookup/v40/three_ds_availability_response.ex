defmodule Adyen.BinLookup.V40.ThreeDSAvailabilityResponse do
  @moduledoc """
  Provides struct and type for a ThreeDSAvailabilityResponse
  """

  @type t :: %__MODULE__{
          dsPublicKeys: [Adyen.BinLookup.V40.DSPublicKeyDetail.t()] | nil,
          threeDS1Supported: boolean | nil,
          threeDS2CardRangeDetails: [Adyen.BinLookup.V40.ThreeDs2CardRangeDetail.t()] | nil,
          threeDS2supported: boolean | nil
        }

  defstruct [:dsPublicKeys, :threeDS1Supported, :threeDS2CardRangeDetails, :threeDS2supported]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      dsPublicKeys: [{Adyen.BinLookup.V40.DSPublicKeyDetail, :t}],
      threeDS1Supported: :boolean,
      threeDS2CardRangeDetails: [{Adyen.BinLookup.V40.ThreeDs2CardRangeDetail, :t}],
      threeDS2supported: :boolean
    ]
  end
end
