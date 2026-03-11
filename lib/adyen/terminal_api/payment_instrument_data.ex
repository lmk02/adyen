defmodule Adyen.TerminalAPI.PaymentInstrumentData do
  @moduledoc """
  Provides struct and type for a PaymentInstrumentData
  """

  @type t :: %__MODULE__{
          CardData: Adyen.TerminalAPI.CardData.t() | nil,
          CheckData: Adyen.TerminalAPI.CheckData.t() | nil,
          MobileData: Adyen.TerminalAPI.MobileData.t() | nil,
          PaymentInstrumentType: String.t(),
          ProtectedCardData: String.t() | nil,
          StoredValueAccountID: Adyen.TerminalAPI.StoredValueAccountID.t() | nil
        }

  defstruct [
    :CardData,
    :CheckData,
    :MobileData,
    :PaymentInstrumentType,
    :ProtectedCardData,
    :StoredValueAccountID
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CardData: {Adyen.TerminalAPI.CardData, :t},
      CheckData: {Adyen.TerminalAPI.CheckData, :t},
      MobileData: {Adyen.TerminalAPI.MobileData, :t},
      PaymentInstrumentType: {:enum, ["Card", "Cash", "Check", "Mobile", "StoredValue"]},
      ProtectedCardData: :string,
      StoredValueAccountID: {Adyen.TerminalAPI.StoredValueAccountID, :t}
    ]
  end
end
