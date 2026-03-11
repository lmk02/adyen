defmodule Adyen.BalancePlatform.V1.LegalEntity do
  @moduledoc """
  Provides struct and type for a LegalEntity
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          documents: [Adyen.BalancePlatform.V1.EntityReference.t()] | nil,
          entityAssociations: [Adyen.BalancePlatform.V1.LegalEntityAssociation.t()] | nil,
          id: String.t(),
          individual: Adyen.BalancePlatform.V1.Individual.t() | nil,
          organization: Adyen.BalancePlatform.V1.Organization.t() | nil,
          reference: String.t() | nil,
          transferInstruments: [Adyen.BalancePlatform.V1.TransferInstrumentReference.t()] | nil,
          type: String.t() | nil
        }

  defstruct [
    :capabilities,
    :documents,
    :entityAssociations,
    :id,
    :individual,
    :organization,
    :reference,
    :transferInstruments,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      capabilities: :map,
      documents: [{Adyen.BalancePlatform.V1.EntityReference, :t}],
      entityAssociations: [{Adyen.BalancePlatform.V1.LegalEntityAssociation, :t}],
      id: :string,
      individual: {Adyen.BalancePlatform.V1.Individual, :t},
      organization: {Adyen.BalancePlatform.V1.Organization, :t},
      reference: :string,
      transferInstruments: [{Adyen.BalancePlatform.V1.TransferInstrumentReference, :t}],
      type: {:enum, ["individual", "organization"]}
    ]
  end
end
