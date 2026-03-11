defmodule Adyen.LegalEntity.V2.TransferInstrument do
  @moduledoc """
  Provides struct and type for a TransferInstrument
  """

  @type t :: %__MODULE__{
          bankAccount: Adyen.LegalEntity.V2.BankAccountInfo.t(),
          documentDetails: [Adyen.LegalEntity.V2.DocumentReference.t()] | nil,
          id: String.t(),
          legalEntityId: String.t(),
          type: String.t()
        }

  defstruct [:bankAccount, :documentDetails, :id, :legalEntityId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bankAccount: {Adyen.LegalEntity.V2.BankAccountInfo, :t},
      documentDetails: [{Adyen.LegalEntity.V2.DocumentReference, :t}],
      id: :string,
      legalEntityId: :string,
      type: {:enum, ["bankAccount", "recurringDetail"]}
    ]
  end
end
