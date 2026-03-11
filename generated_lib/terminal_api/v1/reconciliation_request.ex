defmodule Adyen.TerminalAPI.V1.ReconciliationRequest do
  @moduledoc """
  Provides struct and type for a ReconciliationRequest
  """

  @type t :: %__MODULE__{
          AcquirerID: [integer] | nil,
          POIReconciliationID: integer | nil,
          ReconciliationType: String.t()
        }

  defstruct [:AcquirerID, :POIReconciliationID, :ReconciliationType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AcquirerID: [:integer],
      POIReconciliationID: :integer,
      ReconciliationType:
        {:enum,
         [
           "AcquirerReconciliation",
           "AcquirerSynchronisation",
           "PreviousReconciliation",
           "SaleReconciliation"
         ]}
    ]
  end
end
