defmodule Adyen.LegalEntity.V1.TransferInstrument do
  @moduledoc """
  Provides struct and type for a TransferInstrument
  """

  @type t :: %__MODULE__{
          bankAccount: Adyen.LegalEntity.V1.BankAccountInfo.t(),
          documents: [Adyen.LegalEntity.V1.EntityReference.t()] | nil,
          id: String.t(),
          legalEntityId: String.t(),
          type: String.t()
        }

  defstruct [:bankAccount, :documents, :id, :legalEntityId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bankAccount: {Adyen.LegalEntity.V1.BankAccountInfo, :t},
      documents: [{Adyen.LegalEntity.V1.EntityReference, :t}],
      id: :string,
      legalEntityId: :string,
      type: {:enum, ["bankAccount", "recurringDetail"]}
    ]
  end
end
