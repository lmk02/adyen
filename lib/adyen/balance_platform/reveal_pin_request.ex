defmodule Adyen.BalancePlatform.RevealPinRequest do
  @moduledoc """
  Provides struct and type for a RevealPinRequest
  """

  @type t :: %__MODULE__{encryptedKey: String.t(), paymentInstrumentId: String.t()}

  defstruct [:encryptedKey, :paymentInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [encryptedKey: :string, paymentInstrumentId: :string]
  end
end
