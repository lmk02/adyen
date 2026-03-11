defmodule Adyen.LegalEntity.V4.LegalEntity do
  @moduledoc """
  Provides struct and type for a LegalEntity
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          documentDetails: [Adyen.LegalEntity.V4.DocumentReference.t()] | nil,
          documents: [Adyen.LegalEntity.V4.EntityReference.t()] | nil,
          entityAssociations: [Adyen.LegalEntity.V4.LegalEntityAssociation.t()] | nil,
          id: String.t(),
          individual: Adyen.LegalEntity.V4.Individual.t() | nil,
          organization: Adyen.LegalEntity.V4.Organization.t() | nil,
          problems: [Adyen.LegalEntity.V4.CapabilityProblem.t()] | nil,
          reference: String.t() | nil,
          soleProprietorship: Adyen.LegalEntity.V4.SoleProprietorship.t() | nil,
          transferInstruments: [Adyen.LegalEntity.V4.TransferInstrumentReference.t()] | nil,
          trust: Adyen.LegalEntity.V4.Trust.t() | nil,
          type: String.t() | nil,
          unincorporatedPartnership: Adyen.LegalEntity.V4.UnincorporatedPartnership.t() | nil,
          verificationDeadlines: [Adyen.LegalEntity.V4.VerificationDeadline.t()] | nil,
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
      documentDetails: [{Adyen.LegalEntity.V4.DocumentReference, :t}],
      documents: [{Adyen.LegalEntity.V4.EntityReference, :t}],
      entityAssociations: [{Adyen.LegalEntity.V4.LegalEntityAssociation, :t}],
      id: :string,
      individual: {Adyen.LegalEntity.V4.Individual, :t},
      organization: {Adyen.LegalEntity.V4.Organization, :t},
      problems: [{Adyen.LegalEntity.V4.CapabilityProblem, :t}],
      reference: :string,
      soleProprietorship: {Adyen.LegalEntity.V4.SoleProprietorship, :t},
      transferInstruments: [{Adyen.LegalEntity.V4.TransferInstrumentReference, :t}],
      trust: {Adyen.LegalEntity.V4.Trust, :t},
      type:
        {:enum,
         [
           "individual",
           "organization",
           "soleProprietorship",
           "trust",
           "unincorporatedPartnership"
         ]},
      unincorporatedPartnership: {Adyen.LegalEntity.V4.UnincorporatedPartnership, :t},
      verificationDeadlines: [{Adyen.LegalEntity.V4.VerificationDeadline, :t}],
      verificationPlan: :string
    ]
  end
end
