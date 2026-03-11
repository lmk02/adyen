defmodule Adyen.Fund.V3.RefundFundsTransferRequest do
  @moduledoc """
  Provides struct and type for a RefundFundsTransferRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Fund.V3.Amount.t(),
          merchantReference: String.t() | nil,
          originalReference: String.t()
        }

  defstruct [:amount, :merchantReference, :originalReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: {Adyen.Fund.V3.Amount, :t}, merchantReference: :string, originalReference: :string]
  end
end
