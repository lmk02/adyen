defmodule Adyen.TerminalAPI.GetTotalsRequest do
  @moduledoc """
  Provides struct and type for a GetTotalsRequest
  """

  @type t :: %__MODULE__{
          TotalDetails: [String.t()] | nil,
          TotalFilter: Adyen.TerminalAPI.TotalFilter.t() | nil
        }

  defstruct [:TotalDetails, :TotalFilter]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      TotalDetails: [enum: ["OperatorID", "POIID", "SaleID", "ShiftNumber", "TotalsGroupID"]],
      TotalFilter: {Adyen.TerminalAPI.TotalFilter, :t}
    ]
  end
end
