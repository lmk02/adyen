defmodule Adyen.TerminalAPI.V1.TransactionTotals do
  @moduledoc """
  Provides struct and type for a TransactionTotals
  """

  @type t :: %__MODULE__{
          AcquirerID: integer | nil,
          CardBrand: String.t() | nil,
          HostReconciliationID: String.t() | nil,
          OperatorID: String.t() | nil,
          POIID: String.t() | nil,
          PaymentCurrency: String.t() | nil,
          PaymentInstrumentType: String.t(),
          PaymentTotals: [Adyen.TerminalAPI.V1.PaymentTotals.t()] | nil,
          SaleID: String.t() | nil,
          ShiftNumber: String.t() | nil,
          TotalsGroupID: String.t() | nil
        }

  defstruct [
    :AcquirerID,
    :CardBrand,
    :HostReconciliationID,
    :OperatorID,
    :POIID,
    :PaymentCurrency,
    :PaymentInstrumentType,
    :PaymentTotals,
    :SaleID,
    :ShiftNumber,
    :TotalsGroupID
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AcquirerID: :integer,
      CardBrand: :string,
      HostReconciliationID: :string,
      OperatorID: :string,
      POIID: :string,
      PaymentCurrency: :string,
      PaymentInstrumentType: {:enum, ["Card", "Cash", "Check", "Mobile", "StoredValue"]},
      PaymentTotals: [{Adyen.TerminalAPI.V1.PaymentTotals, :t}],
      SaleID: :string,
      ShiftNumber: :string,
      TotalsGroupID: :string
    ]
  end
end
