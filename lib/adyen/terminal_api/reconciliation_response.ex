defmodule Adyen.TerminalAPI.ReconciliationResponse do
  @moduledoc """
  Provides struct and type for a ReconciliationResponse
  """

  @type t :: %__MODULE__{
          POIReconciliationID: integer | nil,
          ReconciliationType: String.t(),
          Response: Adyen.TerminalAPI.Response.t(),
          TransactionTotals: [Adyen.TerminalAPI.TransactionTotals.t()] | nil
        }

  defstruct [:POIReconciliationID, :ReconciliationType, :Response, :TransactionTotals]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      POIReconciliationID: :integer,
      ReconciliationType:
        {:enum,
         [
           "AcquirerReconciliation",
           "AcquirerSynchronisation",
           "PreviousReconciliation",
           "SaleReconciliation"
         ]},
      Response: {Adyen.TerminalAPI.Response, :t},
      TransactionTotals: [{Adyen.TerminalAPI.TransactionTotals, :t}]
    ]
  end
end
