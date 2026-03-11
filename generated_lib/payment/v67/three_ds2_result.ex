defmodule Adyen.Payment.V67.ThreeDs2Result do
  @moduledoc """
  Provides struct and type for a ThreeDs2Result
  """

  @type t :: %__MODULE__{
          authenticationValue: String.t() | nil,
          cavvAlgorithm: String.t() | nil,
          challengeCancel: String.t() | nil,
          dsTransID: String.t() | nil,
          eci: String.t() | nil,
          exemptionIndicator: String.t() | nil,
          messageVersion: String.t() | nil,
          riskScore: String.t() | nil,
          threeDSServerTransID: String.t() | nil,
          timestamp: String.t() | nil,
          transStatus: String.t() | nil,
          transStatusReason: String.t() | nil,
          whiteListStatus: String.t() | nil
        }

  defstruct [
    :authenticationValue,
    :cavvAlgorithm,
    :challengeCancel,
    :dsTransID,
    :eci,
    :exemptionIndicator,
    :messageVersion,
    :riskScore,
    :threeDSServerTransID,
    :timestamp,
    :transStatus,
    :transStatusReason,
    :whiteListStatus
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authenticationValue: :string,
      cavvAlgorithm: :string,
      challengeCancel: {:enum, ["01", "02", "03", "04", "05", "06", "07"]},
      dsTransID: :string,
      eci: :string,
      exemptionIndicator:
        {:enum, ["lowValue", "secureCorporate", "trustedBeneficiary", "transactionRiskAnalysis"]},
      messageVersion: :string,
      riskScore: :string,
      threeDSServerTransID: :string,
      timestamp: :string,
      transStatus: :string,
      transStatusReason: :string,
      whiteListStatus: :string
    ]
  end
end
