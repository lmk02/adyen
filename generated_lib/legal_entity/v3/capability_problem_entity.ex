defmodule Adyen.LegalEntity.V3.CapabilityProblemEntity do
  @moduledoc """
  Provides struct and type for a CapabilityProblemEntity
  """

  @type t :: %__MODULE__{
          documents: [String.t()] | nil,
          id: String.t() | nil,
          owner: Adyen.LegalEntity.V3.CapabilityProblemEntityRecursive.t() | nil,
          type: String.t() | nil
        }

  defstruct [:documents, :id, :owner, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      documents: [:string],
      id: :string,
      owner: {Adyen.LegalEntity.V3.CapabilityProblemEntityRecursive, :t},
      type: {:enum, ["BankAccount", "Document", "LegalEntity", "product"]}
    ]
  end
end
