defmodule Adyen.A2APayments.V1.PaymentDetails do
  @moduledoc """
  Provides struct and type for a PaymentDetails
  """

  @type t :: %__MODULE__{
          amount: Adyen.A2APayments.V1.Amount.t(),
          counterparty: Adyen.A2APayments.V1.Counterparty.t(),
          description: String.t(),
          expiresAt: DateTime.t()
        }

  defstruct [:amount, :counterparty, :description, :expiresAt]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.A2APayments.V1.Amount, :t},
      counterparty: {Adyen.A2APayments.V1.Counterparty, :t},
      description: :string,
      expiresAt: {:string, "date-time"}
    ]
  end
end
