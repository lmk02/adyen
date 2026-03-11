defmodule Adyen.BalancePlatform.V2.BalanceAccount do
  @moduledoc """
  Provides struct and type for a BalanceAccount
  """

  @type t :: %__MODULE__{
          accountHolderId: String.t(),
          balances: [Adyen.BalancePlatform.V2.Balance.t()] | nil,
          defaultCurrencyCode: String.t() | nil,
          description: String.t() | nil,
          id: String.t(),
          metadata: map | nil,
          migratedAccountCode: String.t() | nil,
          platformPaymentConfiguration:
            Adyen.BalancePlatform.V2.PlatformPaymentConfiguration.t() | nil,
          reference: String.t() | nil,
          status: String.t() | nil,
          timeZone: String.t() | nil
        }

  defstruct [
    :accountHolderId,
    :balances,
    :defaultCurrencyCode,
    :description,
    :id,
    :metadata,
    :migratedAccountCode,
    :platformPaymentConfiguration,
    :reference,
    :status,
    :timeZone
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderId: :string,
      balances: [{Adyen.BalancePlatform.V2.Balance, :t}],
      defaultCurrencyCode: :string,
      description: :string,
      id: :string,
      metadata: :map,
      migratedAccountCode: :string,
      platformPaymentConfiguration: {Adyen.BalancePlatform.V2.PlatformPaymentConfiguration, :t},
      reference: :string,
      status: {:enum, ["active", "closed", "inactive", "suspended"]},
      timeZone: :string
    ]
  end
end
