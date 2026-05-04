defmodule Adyen.BalancePlatform.V2.MandateUpdate do
  @moduledoc """
  Provides struct and type for a MandateUpdate
  """

  @type t :: %__MODULE__{paymentInstrumentId: String.t() | nil}

  defstruct [:paymentInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [paymentInstrumentId: {:union, [:string, :null]}]
  end
end
