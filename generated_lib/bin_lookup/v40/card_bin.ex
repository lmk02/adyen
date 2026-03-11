defmodule Adyen.BinLookup.V40.CardBin do
  @moduledoc """
  Provides struct and type for a CardBin
  """

  @type t :: %__MODULE__{
          bin: String.t() | nil,
          commercial: boolean | nil,
          fundingSource: String.t() | nil,
          fundsAvailability: String.t() | nil,
          issuingBank: String.t() | nil,
          issuingCountry: String.t() | nil,
          issuingCurrency: String.t() | nil,
          paymentMethod: String.t() | nil,
          payoutEligible: String.t() | nil,
          summary: String.t() | nil
        }

  defstruct [
    :bin,
    :commercial,
    :fundingSource,
    :fundsAvailability,
    :issuingBank,
    :issuingCountry,
    :issuingCurrency,
    :paymentMethod,
    :payoutEligible,
    :summary
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bin: :string,
      commercial: :boolean,
      fundingSource: :string,
      fundsAvailability: :string,
      issuingBank: :string,
      issuingCountry: :string,
      issuingCurrency: :string,
      paymentMethod: :string,
      payoutEligible: :string,
      summary: :string
    ]
  end
end
