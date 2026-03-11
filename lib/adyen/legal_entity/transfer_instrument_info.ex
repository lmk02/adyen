defmodule Adyen.LegalEntity.TransferInstrumentInfo do
  @moduledoc """
  Provides struct and type for a TransferInstrumentInfo
  """

  @type t :: %__MODULE__{
          bankAccount: Adyen.LegalEntity.BankAccountInfo.t(),
          legalEntityId: String.t(),
          type: String.t()
        }

  defstruct [:bankAccount, :legalEntityId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bankAccount: {Adyen.LegalEntity.BankAccountInfo, :t},
      legalEntityId: :string,
      type: {:enum, ["bankAccount", "recurringDetail"]}
    ]
  end
end
