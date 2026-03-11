defmodule Adyen.BinLookup.V52.ThreeDSAvailabilityResponse do
  @moduledoc """
  Provides struct and type for a ThreeDSAvailabilityResponse
  """

  @type t :: %__MODULE__{
          binDetails: Adyen.BinLookup.V52.BinDetail.t() | nil,
          dsPublicKeys: [Adyen.BinLookup.V52.DSPublicKeyDetail.t()] | nil,
          threeDS1Supported: boolean | nil,
          threeDS2CardRangeDetails: [Adyen.BinLookup.V52.ThreeDs2CardRangeDetail.t()] | nil,
          threeDS2supported: boolean | nil
        }

  defstruct [
    :binDetails,
    :dsPublicKeys,
    :threeDS1Supported,
    :threeDS2CardRangeDetails,
    :threeDS2supported
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      binDetails: {Adyen.BinLookup.V52.BinDetail, :t},
      dsPublicKeys: [{Adyen.BinLookup.V52.DSPublicKeyDetail, :t}],
      threeDS1Supported: :boolean,
      threeDS2CardRangeDetails: [{Adyen.BinLookup.V52.ThreeDs2CardRangeDetail, :t}],
      threeDS2supported: :boolean
    ]
  end
end
