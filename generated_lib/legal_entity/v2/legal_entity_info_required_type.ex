defmodule Adyen.LegalEntity.V2.LegalEntityInfoRequiredType do
  @moduledoc """
  Provides struct and type for a LegalEntityInfoRequiredType
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          entityAssociations: [Adyen.LegalEntity.V2.LegalEntityAssociation.t()] | nil,
          individual: Adyen.LegalEntity.V2.Individual.t() | nil,
          organization: Adyen.LegalEntity.V2.Organization.t() | nil,
          reference: String.t() | nil,
          soleProprietorship: Adyen.LegalEntity.V2.SoleProprietorship.t() | nil,
          trust: Adyen.LegalEntity.V2.Trust.t() | nil,
          type: String.t(),
          unincorporatedPartnership: Adyen.LegalEntity.V2.UnincorporatedPartnership.t() | nil,
          verificationPlan: String.t() | nil
        }

  defstruct [
    :capabilities,
    :entityAssociations,
    :individual,
    :organization,
    :reference,
    :soleProprietorship,
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
      entityAssociations: [{Adyen.LegalEntity.V2.LegalEntityAssociation, :t}],
      individual: {Adyen.LegalEntity.V2.Individual, :t},
      organization: {Adyen.LegalEntity.V2.Organization, :t},
      reference: :string,
      soleProprietorship: {Adyen.LegalEntity.V2.SoleProprietorship, :t},
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
