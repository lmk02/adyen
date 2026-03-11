defmodule Adyen.TerminalAPI.V1.PaymentInstrumentData do
  @moduledoc """
  Provides struct and type for a PaymentInstrumentData
  """

  @type t :: %__MODULE__{
          CardData: Adyen.TerminalAPI.V1.CardData.t() | nil,
          CheckData: Adyen.TerminalAPI.V1.CheckData.t() | nil,
          MobileData: Adyen.TerminalAPI.V1.MobileData.t() | nil,
          PaymentInstrumentType: String.t(),
          ProtectedCardData: String.t() | nil,
          StoredValueAccountID: Adyen.TerminalAPI.V1.StoredValueAccountID.t() | nil
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
      CardData: {Adyen.TerminalAPI.V1.CardData, :t},
      CheckData: {Adyen.TerminalAPI.V1.CheckData, :t},
      MobileData: {Adyen.TerminalAPI.V1.MobileData, :t},
      PaymentInstrumentType: {:enum, ["Card", "Cash", "Check", "Mobile", "StoredValue"]},
      ProtectedCardData: :string,
      StoredValueAccountID: {Adyen.TerminalAPI.V1.StoredValueAccountID, :t}
    ]
  end
end
