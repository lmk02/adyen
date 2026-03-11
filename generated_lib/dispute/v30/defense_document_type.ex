defmodule Adyen.Dispute.V30.DefenseDocumentType do
  @moduledoc """
  Provides struct and type for a DefenseDocumentType
  """

  @type t :: %__MODULE__{
          available: boolean,
          defenseDocumentTypeCode: String.t(),
          requirementLevel: String.t()
        }

  defstruct [:available, :defenseDocumentTypeCode, :requirementLevel]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [available: :boolean, defenseDocumentTypeCode: :string, requirementLevel: :string]
  end
end
