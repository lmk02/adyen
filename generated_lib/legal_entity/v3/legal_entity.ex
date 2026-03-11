defmodule Adyen.LegalEntity.V3.LegalEntity do
  @moduledoc """
  Provides struct and type for a LegalEntity
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          documentDetails: [Adyen.LegalEntity.V3.DocumentReference.t()] | nil,
          documents: [Adyen.LegalEntity.V3.EntityReference.t()] | nil,
          entityAssociations: [Adyen.LegalEntity.V3.LegalEntityAssociation.t()] | nil,
          id: String.t(),
          individual: Adyen.LegalEntity.V3.Individual.t() | nil,
          organization: Adyen.LegalEntity.V3.Organization.t() | nil,
          problems: [Adyen.LegalEntity.V3.CapabilityProblem.t()] | nil,
          reference: String.t() | nil,
          soleProprietorship: Adyen.LegalEntity.V3.SoleProprietorship.t() | nil,
          transferInstruments: [Adyen.LegalEntity.V3.TransferInstrumentReference.t()] | nil,
          trust: Adyen.LegalEntity.V3.Trust.t() | nil,
          type: String.t() | nil,
          unincorporatedPartnership: Adyen.LegalEntity.V3.UnincorporatedPartnership.t() | nil,
          verificationDeadlines: [Adyen.LegalEntity.V3.VerificationDeadline.t()] | nil,
          verificationPlan: String.t() | nil
        }

  defstruct [
    :capabilities,
    :documentDetails,
    :documents,
    :entityAssociations,
    :id,
    :individual,
    :organization,
    :problems,
    :reference,
    :soleProprietorship,
    :transferInstruments,
    :trust,
    :type,
    :unincorporatedPartnership,
    :verificationDeadlines,
    :verificationPlan
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      capabilities: :map,
      documentDetails: [{Adyen.LegalEntity.V3.DocumentReference, :t}],
      documents: [{Adyen.LegalEntity.V3.EntityReference, :t}],
      entityAssociations: [{Adyen.LegalEntity.V3.LegalEntityAssociation, :t}],
      id: :string,
      individual: {Adyen.LegalEntity.V3.Individual, :t},
      organization: {Adyen.LegalEntity.V3.Organization, :t},
      problems: [{Adyen.LegalEntity.V3.CapabilityProblem, :t}],
      reference: :string,
      soleProprietorship: {Adyen.LegalEntity.V3.SoleProprietorship, :t},
      transferInstruments: [{Adyen.LegalEntity.V3.TransferInstrumentReference, :t}],
      trust: {Adyen.LegalEntity.V3.Trust, :t},
      type:
        {:enum,
         [
           "individual",
           "organization",
           "soleProprietorship",
           "trust",
           "unincorporatedPartnership"
         ]},
      unincorporatedPartnership: {Adyen.LegalEntity.V3.UnincorporatedPartnership, :t},
      verificationDeadlines: [{Adyen.LegalEntity.V3.VerificationDeadline, :t}],
      verificationPlan: :string
    ]
  end
end
