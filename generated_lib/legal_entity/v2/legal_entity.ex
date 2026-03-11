defmodule Adyen.LegalEntity.V2.LegalEntity do
  @moduledoc """
  Provides struct and type for a LegalEntity
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          documentDetails: [Adyen.LegalEntity.V2.DocumentReference.t()] | nil,
          documents: [Adyen.LegalEntity.V2.EntityReference.t()] | nil,
          entityAssociations: [Adyen.LegalEntity.V2.LegalEntityAssociation.t()] | nil,
          id: String.t(),
          individual: Adyen.LegalEntity.V2.Individual.t() | nil,
          organization: Adyen.LegalEntity.V2.Organization.t() | nil,
          reference: String.t() | nil,
          soleProprietorship: Adyen.LegalEntity.V2.SoleProprietorship.t() | nil,
          transferInstruments: [Adyen.LegalEntity.V2.TransferInstrumentReference.t()] | nil,
          trust: Adyen.LegalEntity.V2.Trust.t() | nil,
          type: String.t() | nil,
          unincorporatedPartnership: Adyen.LegalEntity.V2.UnincorporatedPartnership.t() | nil,
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
    :reference,
    :soleProprietorship,
    :transferInstruments,
    :trust,
    :type,
    :unincorporatedPartnership,
    :verificationPlan
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      capabilities: :map,
      documentDetails: [{Adyen.LegalEntity.V2.DocumentReference, :t}],
      documents: [{Adyen.LegalEntity.V2.EntityReference, :t}],
      entityAssociations: [{Adyen.LegalEntity.V2.LegalEntityAssociation, :t}],
      id: :string,
      individual: {Adyen.LegalEntity.V2.Individual, :t},
      organization: {Adyen.LegalEntity.V2.Organization, :t},
      reference: :string,
      soleProprietorship: {Adyen.LegalEntity.V2.SoleProprietorship, :t},
      transferInstruments: [{Adyen.LegalEntity.V2.TransferInstrumentReference, :t}],
      trust: {Adyen.LegalEntity.V2.Trust, :t},
      type:
        {:enum,
         [
           "individual",
           "organization",
           "soleProprietorship",
           "trust",
           "unincorporatedPartnership"
         ]},
      unincorporatedPartnership: {Adyen.LegalEntity.V2.UnincorporatedPartnership, :t},
      verificationPlan: :string
    ]
  end
end
