defmodule Adyen.A2APayments.V1.Counterparty do
  @moduledoc """
  Provides struct and type for a Counterparty
  """

  @type t :: %__MODULE__{
          accountHolder: Adyen.A2APayments.V1.AccountHolder.t(),
          accountIdentification: Adyen.A2APayments.V1.AccountIdentification.t()
        }

  defstruct [:accountHolder, :accountIdentification]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {Adyen.A2APayments.V1.AccountHolder, :t},
      accountIdentification: {Adyen.A2APayments.V1.AccountIdentification, :t}
    ]
  end
end
