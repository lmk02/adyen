defmodule Adyen.BalancePlatform.V1.TransferInstrumentReference do
  @moduledoc """
  Provides struct and type for a TransferInstrumentReference
  """

  @type t :: %__MODULE__{accountIdentifier: String.t(), id: String.t()}

  defstruct [:accountIdentifier, :id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountIdentifier: :string, id: :string]
  end
end
