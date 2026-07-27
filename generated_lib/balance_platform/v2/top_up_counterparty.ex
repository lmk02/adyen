defmodule Adyen.BalancePlatform.V2.TopUpCounterparty do
  @moduledoc """
  Provides struct and type for a TopUpCounterparty
  """

  @type t :: %__MODULE__{transferInstrumentId: String.t()}

  defstruct [:transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transferInstrumentId: :string]
  end
end
