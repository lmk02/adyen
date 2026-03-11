defmodule Adyen.LegalEntity.FinancialReport do
  @moduledoc """
  Provides struct and type for a FinancialReport
  """

  @type t :: %__MODULE__{
          annualTurnover: String.t() | nil,
          balanceSheetTotal: String.t() | nil,
          currencyOfFinancialData: String.t() | nil,
          dateOfFinancialData: String.t() | nil,
          employeeCount: String.t() | nil,
          netAssets: String.t() | nil
        }

  defstruct [
    :annualTurnover,
    :balanceSheetTotal,
    :currencyOfFinancialData,
    :dateOfFinancialData,
    :employeeCount,
    :netAssets
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      annualTurnover: :string,
      balanceSheetTotal: :string,
      currencyOfFinancialData: :string,
      dateOfFinancialData: :string,
      employeeCount: :string,
      netAssets: :string
    ]
  end
end
