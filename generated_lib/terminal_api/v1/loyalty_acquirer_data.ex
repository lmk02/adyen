defmodule Adyen.TerminalAPI.V1.LoyaltyAcquirerData do
  @moduledoc """
  Provides struct and type for a LoyaltyAcquirerData
  """

  @type t :: %__MODULE__{
          ApprovalCode: String.t() | nil,
          HostReconciliationID: String.t() | nil,
          LoyaltyAcquirerID: String.t() | nil,
          LoyaltyTransactionID: Adyen.TerminalAPI.V1.TransactionIDType.t() | nil
        }

  defstruct [:ApprovalCode, :HostReconciliationID, :LoyaltyAcquirerID, :LoyaltyTransactionID]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      ApprovalCode: :string,
      HostReconciliationID: :string,
      LoyaltyAcquirerID: :string,
      LoyaltyTransactionID: {Adyen.TerminalAPI.V1.TransactionIDType, :t}
    ]
  end
end
