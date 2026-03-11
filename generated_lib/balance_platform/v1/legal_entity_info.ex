defmodule Adyen.BalancePlatform.V1.LegalEntityInfo do
  @moduledoc """
  Provides struct and type for a LegalEntityInfo
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          entityAssociations: [Adyen.BalancePlatform.V1.LegalEntityAssociation.t()] | nil,
          individual: Adyen.BalancePlatform.V1.Individual.t() | nil,
          organization: Adyen.BalancePlatform.V1.Organization.t() | nil,
          reference: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:capabilities, :entityAssociations, :individual, :organization, :reference, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      capabilities: :map,
      entityAssociations: [{Adyen.BalancePlatform.V1.LegalEntityAssociation, :t}],
      individual: {Adyen.BalancePlatform.V1.Individual, :t},
      organization: {Adyen.BalancePlatform.V1.Organization, :t},
      reference: :string,
      type: {:enum, ["individual", "organization"]}
    ]
  end
end
