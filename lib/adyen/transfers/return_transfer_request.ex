defmodule Adyen.Transfers.ReturnTransferRequest do
  @moduledoc """
  Provides struct and type for a ReturnTransferRequest
  """

  alias Adyen.Transfers.Amount

  @type t :: %__MODULE__{amount: Amount.t(), reference: String.t() | nil}

  defstruct [:amount, :reference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: {Amount, :t}, reference: :string]
  end
end
