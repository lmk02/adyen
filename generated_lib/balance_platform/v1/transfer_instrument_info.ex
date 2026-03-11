defmodule Adyen.BalancePlatform.V1.TransferInstrumentInfo do
  @moduledoc """
  Provides struct and type for a TransferInstrumentInfo
  """

  @type t :: %__MODULE__{
          bankAccount: Adyen.BalancePlatform.V1.BankAccountInfo.t(),
          legalEntityId: String.t(),
          type: String.t()
        }

  defstruct [:bankAccount, :legalEntityId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bankAccount: {Adyen.BalancePlatform.V1.BankAccountInfo, :t},
      legalEntityId: :string,
      type: {:enum, ["bankAccount", "recurringDetail"]}
    ]
  end
end
