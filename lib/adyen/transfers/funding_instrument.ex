defmodule Adyen.Transfers.FundingInstrument do
  @moduledoc """
  Provides struct and type for a FundingInstrument
  """

  alias Adyen.Transfers.CardIdentification

  @type t :: %__MODULE__{
          cardIdentification: CardIdentification.t() | nil,
          networkPaymentReference: String.t() | nil,
          reference: String.t() | nil,
          sourceOfFunds: String.t() | nil
        }

  defstruct [:cardIdentification, :networkPaymentReference, :reference, :sourceOfFunds]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardIdentification: {CardIdentification, :t},
      networkPaymentReference: :string,
      reference: :string,
      sourceOfFunds: {:enum, ["DEBIT", "DEPOSIT_ACCOUNT"]}
    ]
  end
end
