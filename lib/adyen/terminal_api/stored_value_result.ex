defmodule Adyen.TerminalAPI.StoredValueResult do
  @moduledoc """
  Provides struct and type for a StoredValueResult
  """

  @type t :: %__MODULE__{
          Currency: String.t() | nil,
          EanUpc: integer | nil,
          HostTransactionID: Adyen.TerminalAPI.TransactionIDType.t() | nil,
          ItemAmount: number | nil,
          ProductCode: integer | nil,
          StoredValueAccountStatus: Adyen.TerminalAPI.StoredValueAccountStatus.t() | nil,
          StoredValueTransactionType: String.t()
        }

  defstruct [
    :Currency,
    :EanUpc,
    :HostTransactionID,
    :ItemAmount,
    :ProductCode,
    :StoredValueAccountStatus,
    :StoredValueTransactionType
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      Currency: :string,
      EanUpc: :integer,
      HostTransactionID: {Adyen.TerminalAPI.TransactionIDType, :t},
      ItemAmount: :number,
      ProductCode: :integer,
      StoredValueAccountStatus: {Adyen.TerminalAPI.StoredValueAccountStatus, :t},
      StoredValueTransactionType:
        {:enum, ["Activate", "Duplicate", "Load", "Reserve", "Reverse", "Unload"]}
    ]
  end
end
