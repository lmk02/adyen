defmodule Adyen.BalancePlatform.SweepCounterparty do
  @moduledoc """
  Provides struct and type for a SweepCounterparty
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          merchantAccount: String.t() | nil,
          transferInstrumentId: String.t() | nil
        }

  defstruct [:balanceAccountId, :merchantAccount, :transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [balanceAccountId: :string, merchantAccount: :string, transferInstrumentId: :string]
  end
end
