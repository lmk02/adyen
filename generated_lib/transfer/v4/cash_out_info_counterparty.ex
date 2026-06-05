defmodule Adyen.Transfer.V4.CashOutInfoCounterparty do
  @moduledoc """
  Provides struct and type for a CashOutInfoCounterparty
  """

  @type t :: %__MODULE__{transferInstrumentId: String.t() | nil}

  defstruct [:transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transferInstrumentId: :string]
  end
end
