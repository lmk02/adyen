defmodule Adyen.TerminalAPI.GetTotalsResponse do
  @moduledoc """
  Provides struct and type for a GetTotalsResponse
  """

  @type t :: %__MODULE__{
          POIReconciliationID: integer,
          Response: Adyen.TerminalAPI.Response.t(),
          TransactionTotals: [Adyen.TerminalAPI.TransactionTotals.t()] | nil
        }

  defstruct [:POIReconciliationID, :Response, :TransactionTotals]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      POIReconciliationID: :integer,
      Response: {Adyen.TerminalAPI.Response, :t},
      TransactionTotals: [{Adyen.TerminalAPI.TransactionTotals, :t}]
    ]
  end
end
