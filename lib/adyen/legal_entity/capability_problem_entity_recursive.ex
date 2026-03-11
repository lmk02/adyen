defmodule Adyen.LegalEntity.CapabilityProblemEntityRecursive do
  @moduledoc """
  Provides struct and type for a CapabilityProblemEntityRecursive
  """

  @type t :: %__MODULE__{
          documents: [String.t()] | nil,
          id: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:documents, :id, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      documents: [:string],
      id: :string,
      type: {:enum, ["BankAccount", "Document", "LegalEntity", "product"]}
    ]
  end
end
