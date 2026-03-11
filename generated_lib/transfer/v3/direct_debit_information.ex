defmodule Adyen.Transfer.V3.DirectDebitInformation do
  @moduledoc """
  Provides struct and type for a DirectDebitInformation
  """

  @type t :: %__MODULE__{
          dateOfSignature: DateTime.t() | nil,
          dueDate: DateTime.t() | nil,
          mandateId: String.t() | nil,
          sequenceType: String.t() | nil
        }

  defstruct [:dateOfSignature, :dueDate, :mandateId, :sequenceType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      dateOfSignature: {:string, "date-time"},
      dueDate: {:string, "date-time"},
      mandateId: :string,
      sequenceType: :string
    ]
  end
end
