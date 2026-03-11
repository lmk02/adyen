defmodule Adyen.TerminalAPI.StoredValueData do
  @moduledoc """
  Provides struct and type for a StoredValueData
  """

  @type t :: %__MODULE__{
          Currency: String.t() | nil,
          EanUpc: integer | nil,
          ItemAmount: number | nil,
          OriginalPOITransaction: Adyen.TerminalAPI.OriginalPOITransaction.t() | nil,
          ProductCode: integer | nil,
          StoredValueAccountID: Adyen.TerminalAPI.StoredValueAccountID.t() | nil,
          StoredValueProvider: String.t() | nil,
          StoredValueTransactionType: String.t()
        }

  defstruct [
    :Currency,
    :EanUpc,
    :ItemAmount,
    :OriginalPOITransaction,
    :ProductCode,
    :StoredValueAccountID,
    :StoredValueProvider,
    :StoredValueTransactionType
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      Currency: :string,
      EanUpc: :integer,
      ItemAmount: :number,
      OriginalPOITransaction: {Adyen.TerminalAPI.OriginalPOITransaction, :t},
      ProductCode: :integer,
      StoredValueAccountID: {Adyen.TerminalAPI.StoredValueAccountID, :t},
      StoredValueProvider: :string,
      StoredValueTransactionType:
        {:enum, ["Activate", "Duplicate", "Load", "Reserve", "Reverse", "Unload"]}
    ]
  end
end
