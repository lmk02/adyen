defmodule Adyen.Transfer.V3.ReturnTransferRequest do
  @moduledoc """
  Provides struct and type for a ReturnTransferRequest
  """

  @type t :: %__MODULE__{amount: Adyen.Transfer.V3.Amount.t(), reference: String.t() | nil}

  defstruct [:amount, :reference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: {Adyen.Transfer.V3.Amount, :t}, reference: :string]
  end
end
