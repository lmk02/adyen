defmodule Adyen.LegalEntity.LegalEntity do
  @moduledoc """
  Provides struct and type for a LegalEntity
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          documentDetails: [Adyen.LegalEntity.DocumentReference.t()] | nil,
          documents: [Adyen.LegalEntity.EntityReference.t()] | nil,
          entityAssociations: [Adyen.LegalEntity.LegalEntityAssociation.t()] | nil,
          id: String.t(),
          individual: Adyen.LegalEntity.Individual.t() | nil,
          organization: Adyen.LegalEntity.Organization.t() | nil,
          problems: [Adyen.LegalEntity.CapabilityProblem.t()] | nil,
          reference: String.t() | nil,
          soleProprietorship: Adyen.LegalEntity.SoleProprietorship.t() | nil,
          transferInstruments: [Adyen.LegalEntity.TransferInstrumentReference.t()] | nil,
          trust: Adyen.LegalEntity.Trust.t() | nil,
          type: String.t() | nil,
          unincorporatedPartnership: Adyen.LegalEntity.UnincorporatedPartnership.t() | nil,
          verificationDeadlines: [Adyen.LegalEntity.VerificationDeadline.t()] | nil,
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
      documentDetails: [{Adyen.LegalEntity.DocumentReference, :t}],
      documents: [{Adyen.LegalEntity.EntityReference, :t}],
      entityAssociations: [{Adyen.LegalEntity.LegalEntityAssociation, :t}],
      id: :string,
      individual: {Adyen.LegalEntity.Individual, :t},
      organization: {Adyen.LegalEntity.Organization, :t},
      problems: [{Adyen.LegalEntity.CapabilityProblem, :t}],
      reference: :string,
      soleProprietorship: {Adyen.LegalEntity.SoleProprietorship, :t},
      transferInstruments: [{Adyen.LegalEntity.TransferInstrumentReference, :t}],
      trust: {Adyen.LegalEntity.Trust, :t},
      type:
        {:enum,
         [
           "individual",
           "organization",
           "soleProprietorship",
           "trust",
           "unincorporatedPartnership"
         ]},
      unincorporatedPartnership: {Adyen.LegalEntity.UnincorporatedPartnership, :t},
      verificationDeadlines: [{Adyen.LegalEntity.VerificationDeadline, :t}],
      verificationPlan: :string
    ]
  end
end
