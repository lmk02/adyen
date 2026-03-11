defmodule Adyen.Transaction.V1.PatchableDuplicateInfo do
  @moduledoc """
  Provides struct and type for a PatchableDuplicateInfo
  """

  @type t :: %__MODULE__{
          duplicateTransactionId: String.t() | nil,
          sameCard: boolean | nil,
          sameIssuer: boolean | nil
        }

  defstruct [:duplicateTransactionId, :sameCard, :sameIssuer]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [duplicateTransactionId: :string, sameCard: :boolean, sameIssuer: {:union, [:boolean, :null]}]
  end
end
