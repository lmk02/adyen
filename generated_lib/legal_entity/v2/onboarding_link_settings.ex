defmodule Adyen.LegalEntity.V2.OnboardingLinkSettings do
  @moduledoc """
  Provides struct and type for a OnboardingLinkSettings
  """

  @type t :: %__MODULE__{
          acceptedCountries: [String.t()] | nil,
          allowBankAccountFormatSelection: boolean | nil,
          allowDebugUi: boolean | nil,
          allowIntraRegionCrossBorderPayout: boolean | nil,
          changeLegalEntityType: boolean | nil,
          editPrefilledCountry: boolean | nil,
          enforceLegalAge: boolean | nil,
          hideOnboardingIntroductionIndividual: boolean | nil,
          hideOnboardingIntroductionOrganization: boolean | nil,
          hideOnboardingIntroductionSoleProprietor: boolean | nil,
          hideOnboardingIntroductionTrust: boolean | nil,
          instantBankVerification: boolean | nil,
          requirePciSignEcomMoto: boolean | nil,
          requirePciSignEcommerce: boolean | nil,
          requirePciSignPos: boolean | nil,
          requirePciSignPosMoto: boolean | nil,
          transferInstrumentLimit: integer | nil
        }

  defstruct [
    :acceptedCountries,
    :allowBankAccountFormatSelection,
    :allowDebugUi,
    :allowIntraRegionCrossBorderPayout,
    :changeLegalEntityType,
    :editPrefilledCountry,
    :enforceLegalAge,
    :hideOnboardingIntroductionIndividual,
    :hideOnboardingIntroductionOrganization,
    :hideOnboardingIntroductionSoleProprietor,
    :hideOnboardingIntroductionTrust,
    :instantBankVerification,
    :requirePciSignEcomMoto,
    :requirePciSignEcommerce,
    :requirePciSignPos,
    :requirePciSignPosMoto,
    :transferInstrumentLimit
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      acceptedCountries: [:string],
      allowBankAccountFormatSelection: :boolean,
      allowDebugUi: :boolean,
      allowIntraRegionCrossBorderPayout: :boolean,
      changeLegalEntityType: :boolean,
      editPrefilledCountry: :boolean,
      enforceLegalAge: :boolean,
      hideOnboardingIntroductionIndividual: :boolean,
      hideOnboardingIntroductionOrganization: :boolean,
      hideOnboardingIntroductionSoleProprietor: :boolean,
      hideOnboardingIntroductionTrust: :boolean,
      instantBankVerification: :boolean,
      requirePciSignEcomMoto: :boolean,
      requirePciSignEcommerce: :boolean,
      requirePciSignPos: :boolean,
      requirePciSignPosMoto: :boolean,
      transferInstrumentLimit: {:integer, "int32"}
    ]
  end
end
