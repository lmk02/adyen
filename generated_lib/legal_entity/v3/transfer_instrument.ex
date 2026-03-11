defmodule Adyen.LegalEntity.V3.TransferInstrument do
  @moduledoc """
  Provides struct and type for a TransferInstrument
  """

  @type t :: %__MODULE__{
          bankAccount: Adyen.LegalEntity.V3.BankAccountInfo.t(),
          capabilities: map | nil,
          documentDetails: [Adyen.LegalEntity.V3.DocumentReference.t()] | nil,
          id: String.t(),
          legalEntityId: String.t(),
          problems: [Adyen.LegalEntity.V3.CapabilityProblem.t()] | nil,
          type: String.t()
        }

  defstruct [:bankAccount, :capabilities, :documentDetails, :id, :legalEntityId, :problems, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bankAccount: {Adyen.LegalEntity.V3.BankAccountInfo, :t},
      capabilities: :map,
      documentDetails: [{Adyen.LegalEntity.V3.DocumentReference, :t}],
      id: :string,
      legalEntityId: :string,
      problems: [{Adyen.LegalEntity.V3.CapabilityProblem, :t}],
      type: {:enum, ["bankAccount", "recurringDetail"]}
    ]
  end
end
