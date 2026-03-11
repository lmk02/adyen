defmodule Adyen.Checkout.V69.ThreeDs2ResponseData do
  @moduledoc """
  Provides struct and type for a ThreeDs2ResponseData
  """

  @type t :: %__MODULE__{
          acsChallengeMandated: String.t() | nil,
          acsOperatorID: String.t() | nil,
          acsReferenceNumber: String.t() | nil,
          acsSignedContent: String.t() | nil,
          acsTransID: String.t() | nil,
          acsURL: String.t() | nil,
          authenticationType: String.t() | nil,
          cardHolderInfo: String.t() | nil,
          cavvAlgorithm: String.t() | nil,
          challengeIndicator: String.t() | nil,
          dsReferenceNumber: String.t() | nil,
          dsTransID: String.t() | nil,
          exemptionIndicator: String.t() | nil,
          messageVersion: String.t() | nil,
          riskScore: String.t() | nil,
          sdkEphemPubKey: String.t() | nil,
          threeDSServerTransID: String.t() | nil,
          transStatus: String.t() | nil,
          transStatusReason: String.t() | nil
        }

  defstruct [
    :acsChallengeMandated,
    :acsOperatorID,
    :acsReferenceNumber,
    :acsSignedContent,
    :acsTransID,
    :acsURL,
    :authenticationType,
    :cardHolderInfo,
    :cavvAlgorithm,
    :challengeIndicator,
    :dsReferenceNumber,
    :dsTransID,
    :exemptionIndicator,
    :messageVersion,
    :riskScore,
    :sdkEphemPubKey,
    :threeDSServerTransID,
    :transStatus,
    :transStatusReason
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      acsChallengeMandated: :string,
      acsOperatorID: :string,
      acsReferenceNumber: :string,
      acsSignedContent: :string,
      acsTransID: :string,
      acsURL: :string,
      authenticationType: :string,
      cardHolderInfo: :string,
      cavvAlgorithm: :string,
      challengeIndicator: :string,
      dsReferenceNumber: :string,
      dsTransID: :string,
      exemptionIndicator: :string,
      messageVersion: :string,
      riskScore: :string,
      sdkEphemPubKey: :string,
      threeDSServerTransID: :string,
      transStatus: :string,
      transStatusReason: :string
    ]
  end
end
