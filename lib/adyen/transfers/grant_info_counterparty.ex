defmodule Adyen.Transfers.GrantInfoCounterparty do
  @moduledoc """
  Provides struct and type for a GrantInfoCounterparty
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          transferInstrumentId: String.t() | nil
        }

  defstruct [:balanceAccountId, :transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [balanceAccountId: :string, transferInstrumentId: :string]
  end
end
