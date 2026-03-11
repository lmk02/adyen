defmodule Adyen.Transfer.V1.PartyIdentification do
  @moduledoc """
  Provides struct and type for a PartyIdentification
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          paymentInstrumentId: String.t() | nil
        }

  defstruct [:balanceAccountId, :paymentInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [balanceAccountId: :string, paymentInstrumentId: :string]
  end
end
