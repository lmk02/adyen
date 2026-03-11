defmodule Adyen.BalancePlatform.V1.BalanceAccount do
  @moduledoc """
  Provides struct and type for a BalanceAccount
  """

  @type t :: %__MODULE__{
          accountHolderId: String.t(),
          balances: [Adyen.BalancePlatform.V1.Balance.t()] | nil,
          defaultCurrencyCode: String.t() | nil,
          description: String.t() | nil,
          id: String.t(),
          paymentInstruments: [Adyen.BalancePlatform.V1.PaymentInstrumentReference.t()] | nil,
          reference: String.t() | nil,
          status: String.t() | nil,
          sweepConfigurations: map | nil,
          timeZone: String.t() | nil
        }

  defstruct [
    :accountHolderId,
    :balances,
    :defaultCurrencyCode,
    :description,
    :id,
    :paymentInstruments,
    :reference,
    :status,
    :sweepConfigurations,
    :timeZone
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderId: :string,
      balances: [{Adyen.BalancePlatform.V1.Balance, :t}],
      defaultCurrencyCode: :string,
      description: :string,
      id: :string,
      paymentInstruments: [{Adyen.BalancePlatform.V1.PaymentInstrumentReference, :t}],
      reference: :string,
      status: {:enum, ["Active", "Closed", "Inactive", "Suspended"]},
      sweepConfigurations: :map,
      timeZone: :string
    ]
  end
end
