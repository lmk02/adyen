defmodule Adyen.TerminalAPI.V1.GetTotalsResponse do
  @moduledoc """
  Provides struct and type for a GetTotalsResponse
  """

  @type t :: %__MODULE__{
          POIReconciliationID: integer,
          Response: Adyen.TerminalAPI.V1.Response.t(),
          TransactionTotals: [Adyen.TerminalAPI.V1.TransactionTotals.t()] | nil
        }

  defstruct [:POIReconciliationID, :Response, :TransactionTotals]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      POIReconciliationID: :integer,
      Response: {Adyen.TerminalAPI.V1.Response, :t},
      TransactionTotals: [{Adyen.TerminalAPI.V1.TransactionTotals, :t}]
    ]
  end
end
