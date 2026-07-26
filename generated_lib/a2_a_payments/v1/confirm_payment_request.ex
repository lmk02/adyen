defmodule Adyen.A2APayments.V1.ConfirmPaymentRequest do
  @moduledoc """
  Provides struct and type for a ConfirmPaymentRequest
  """

  @type t :: %__MODULE__{balanceAccountId: String.t(), token: String.t()}

  defstruct [:balanceAccountId, :token]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [balanceAccountId: :string, token: :string]
  end
end
