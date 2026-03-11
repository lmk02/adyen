defmodule Adyen.BalancePlatform.V1.LegalEntityAssociation do
  @moduledoc """
  Provides struct and type for a LegalEntityAssociation
  """

  @type t :: %__MODULE__{
          associatorId: String.t() | nil,
          entityType: String.t() | nil,
          jobTitle: String.t() | nil,
          legalEntityId: String.t(),
          name: String.t() | nil,
          type: String.t()
        }

  defstruct [:associatorId, :entityType, :jobTitle, :legalEntityId, :name, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      associatorId: :string,
      entityType: :string,
      jobTitle: :string,
      legalEntityId: :string,
      name: :string,
      type: {:enum, ["signatory", "uboThroughControl", "uboThroughOwnership"]}
    ]
  end
end
