defmodule Adyen.TerminalAPI.V1.TotalFilter do
  @moduledoc """
  Provides struct and type for a TotalFilter
  """

  @type t :: %__MODULE__{
          OperatorID: String.t() | nil,
          POIID: String.t() | nil,
          SaleID: String.t() | nil,
          ShiftNumber: String.t() | nil,
          TotalsGroupID: String.t() | nil
        }

  defstruct [:OperatorID, :POIID, :SaleID, :ShiftNumber, :TotalsGroupID]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      OperatorID: :string,
      POIID: :string,
      SaleID: :string,
      ShiftNumber: :string,
      TotalsGroupID: :string
    ]
  end
end
