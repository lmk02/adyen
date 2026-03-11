defmodule Adyen.LegalEntity.V4.LegalEntityInfo do
  @moduledoc """
  Provides struct and type for a LegalEntityInfo
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          entityAssociations: [Adyen.LegalEntity.V4.LegalEntityAssociation.t()] | nil,
          individual: Adyen.LegalEntity.V4.Individual.t() | nil,
          organization: Adyen.LegalEntity.V4.Organization.t() | nil,
          reference: String.t() | nil,
          soleProprietorship: Adyen.LegalEntity.V4.SoleProprietorship.t() | nil,
          trust: Adyen.LegalEntity.V4.Trust.t() | nil,
          type: String.t() | nil,
          unincorporatedPartnership: Adyen.LegalEntity.V4.UnincorporatedPartnership.t() | nil,
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
      entityAssociations: [{Adyen.LegalEntity.V4.LegalEntityAssociation, :t}],
      individual: {Adyen.LegalEntity.V4.Individual, :t},
      organization: {Adyen.LegalEntity.V4.Organization, :t},
      reference: :string,
      soleProprietorship: {Adyen.LegalEntity.V4.SoleProprietorship, :t},
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
      verificationPlan: :string
    ]
  end
end
