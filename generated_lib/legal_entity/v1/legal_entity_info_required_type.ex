defmodule Adyen.LegalEntity.V1.LegalEntityInfoRequiredType do
  @moduledoc """
  Provides struct and type for a LegalEntityInfoRequiredType
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          entityAssociations: [Adyen.LegalEntity.V1.LegalEntityAssociation.t()] | nil,
          individual: Adyen.LegalEntity.V1.Individual.t() | nil,
          organization: Adyen.LegalEntity.V1.Organization.t() | nil,
          reference: String.t() | nil,
          trust: Adyen.LegalEntity.V1.Trust.t() | nil,
          type: String.t(),
          unincorporatedPartnership: Adyen.LegalEntity.V1.UnincorporatedPartnership.t() | nil,
          verificationPlan: String.t() | nil
        }

  defstruct [
    :capabilities,
    :entityAssociations,
    :individual,
    :organization,
    :reference,
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
      entityAssociations: [{Adyen.LegalEntity.V1.LegalEntityAssociation, :t}],
      individual: {Adyen.LegalEntity.V1.Individual, :t},
      organization: {Adyen.LegalEntity.V1.Organization, :t},
      reference: :string,
      trust: {Adyen.LegalEntity.V1.Trust, :t},
      type: {:enum, ["individual", "organization"]},
      unincorporatedPartnership: {Adyen.LegalEntity.V1.UnincorporatedPartnership, :t},
      verificationPlan: :string
    ]
  end
end
