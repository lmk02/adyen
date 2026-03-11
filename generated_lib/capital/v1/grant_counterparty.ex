defmodule Adyen.Capital.V1.GrantCounterparty do
  @moduledoc """
  Provides struct and type for a GrantCounterparty
  """

  @type t :: %__MODULE__{
          accountHolderId: String.t() | nil,
          balanceAccountId: String.t() | nil,
          transferInstrumentId: String.t() | nil
        }

  defstruct [:accountHolderId, :balanceAccountId, :transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountHolderId: :string, balanceAccountId: :string, transferInstrumentId: :string]
  end
end
