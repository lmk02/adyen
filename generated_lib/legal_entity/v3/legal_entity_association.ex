defmodule Adyen.LegalEntity.V3.LegalEntityAssociation do
  @moduledoc """
  Provides struct and type for a LegalEntityAssociation
  """

  @type t :: %__MODULE__{
          associatorId: String.t() | nil,
          entityType: String.t() | nil,
          jobTitle: String.t() | nil,
          legalEntityId: String.t(),
          name: String.t() | nil,
          nominee: boolean | nil,
          relationship: String.t() | nil,
          settlorExemptionReason: [String.t()] | nil,
          type: String.t()
        }

  defstruct [
    :associatorId,
    :entityType,
    :jobTitle,
    :legalEntityId,
    :name,
    :nominee,
    :relationship,
    :settlorExemptionReason,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      associatorId: :string,
      entityType: :string,
      jobTitle: :string,
      legalEntityId: :string,
      name: :string,
      nominee: :boolean,
      relationship: :string,
      settlorExemptionReason: [:string],
      type:
        {:enum,
         [
           "definedBeneficiary",
           "director",
           "immediateParentCompany",
           "legalRepresentative",
           "pciSignatory",
           "protector",
           "secondaryPartner",
           "secondaryTrustee",
           "settlor",
           "signatory",
           "soleProprietorship",
           "trust",
           "trustOwnership",
           "uboThroughControl",
           "uboThroughOwnership",
           "ultimateParentCompany",
           "undefinedBeneficiary",
           "unincorporatedPartnership"
         ]}
    ]
  end
end
