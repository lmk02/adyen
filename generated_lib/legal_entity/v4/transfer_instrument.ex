defmodule Adyen.LegalEntity.V4.TransferInstrument do
  @moduledoc """
  Provides struct and type for a TransferInstrument
  """

  @type t :: %__MODULE__{
          bankAccount: Adyen.LegalEntity.V4.BankAccountInfo.t(),
          capabilities: map | nil,
          documentDetails: [Adyen.LegalEntity.V4.DocumentReference.t()] | nil,
          id: String.t(),
          legalEntityId: String.t(),
          problems: [Adyen.LegalEntity.V4.CapabilityProblem.t()] | nil,
          type: String.t()
        }

  defstruct [:bankAccount, :capabilities, :documentDetails, :id, :legalEntityId, :problems, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bankAccount: {Adyen.LegalEntity.V4.BankAccountInfo, :t},
      capabilities: :map,
      documentDetails: [{Adyen.LegalEntity.V4.DocumentReference, :t}],
      id: :string,
      legalEntityId: :string,
      problems: [{Adyen.LegalEntity.V4.CapabilityProblem, :t}],
      type: {:enum, ["bankAccount", "recurringDetail"]}
    ]
  end
end
