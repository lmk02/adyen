defmodule Adyen.Transaction.V3.DuplicateInfo do
  @moduledoc """
  Provides struct and type for a DuplicateInfo
  """

  @type t :: %__MODULE__{
          duplicateTransactionId: String.t(),
          sameCard: boolean,
          sameIssuer: boolean | nil
        }

  defstruct [:duplicateTransactionId, :sameCard, :sameIssuer]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [duplicateTransactionId: :string, sameCard: :boolean, sameIssuer: :boolean]
  end
end
