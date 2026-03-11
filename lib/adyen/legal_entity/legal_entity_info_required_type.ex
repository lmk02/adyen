defmodule Adyen.LegalEntity.LegalEntityInfoRequiredType do
  @moduledoc """
  Provides struct and type for a LegalEntityInfoRequiredType
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          entityAssociations: [Adyen.LegalEntity.LegalEntityAssociation.t()] | nil,
          individual: Adyen.LegalEntity.Individual.t() | nil,
          organization: Adyen.LegalEntity.Organization.t() | nil,
          reference: String.t() | nil,
          soleProprietorship: Adyen.LegalEntity.SoleProprietorship.t() | nil,
          trust: Adyen.LegalEntity.Trust.t() | nil,
          type: String.t(),
          unincorporatedPartnership: Adyen.LegalEntity.UnincorporatedPartnership.t() | nil,
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
      entityAssociations: [{Adyen.LegalEntity.LegalEntityAssociation, :t}],
      individual: {Adyen.LegalEntity.Individual, :t},
      organization: {Adyen.LegalEntity.Organization, :t},
      reference: :string,
      soleProprietorship: {Adyen.LegalEntity.SoleProprietorship, :t},
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
      verificationPlan: :string
    ]
  end
end
