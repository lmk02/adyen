defmodule Adyen.TerminalAPI.POIData do
  @moduledoc """
  Provides struct and type for a POIData
  """

  @type t :: %__MODULE__{
          POIReconciliationID: integer | nil,
          POITransactionID: Adyen.TerminalAPI.TransactionIDType.t()
        }

  defstruct [:POIReconciliationID, :POITransactionID]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [POIReconciliationID: :integer, POITransactionID: {Adyen.TerminalAPI.TransactionIDType, :t}]
  end
end
