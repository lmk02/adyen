defmodule Adyen.Transfers.IssuingTransactionData do
  @moduledoc """
  Provides struct and type for a IssuingTransactionData
  """

  @type t :: %__MODULE__{captureCycleId: String.t() | nil, type: String.t()}

  defstruct [:captureCycleId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [captureCycleId: :string, type: {:const, "issuingTransactionData"}]
  end
end
