defmodule Adyen.Hop.V5.ShowPages do
  @moduledoc """
  Provides struct and type for a ShowPages
  """

  @type t :: %__MODULE__{
          bankDetailsSummaryPage: boolean | nil,
          bankVerificationPage: boolean | nil,
          businessDetailsSummaryPage: boolean | nil,
          checksOverviewPage: boolean | nil,
          individualDetailsSummaryPage: boolean | nil,
          legalArrangementsDetailsSummaryPage: boolean | nil,
          manualBankAccountPage: boolean | nil,
          shareholderDetailsSummaryPage: boolean | nil,
          welcomePage: boolean | nil
        }

  defstruct [
    :bankDetailsSummaryPage,
    :bankVerificationPage,
    :businessDetailsSummaryPage,
    :checksOverviewPage,
    :individualDetailsSummaryPage,
    :legalArrangementsDetailsSummaryPage,
    :manualBankAccountPage,
    :shareholderDetailsSummaryPage,
    :welcomePage
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bankDetailsSummaryPage: :boolean,
      bankVerificationPage: :boolean,
      businessDetailsSummaryPage: :boolean,
      checksOverviewPage: :boolean,
      individualDetailsSummaryPage: :boolean,
      legalArrangementsDetailsSummaryPage: :boolean,
      manualBankAccountPage: :boolean,
      shareholderDetailsSummaryPage: :boolean,
      welcomePage: :boolean
    ]
  end
end
