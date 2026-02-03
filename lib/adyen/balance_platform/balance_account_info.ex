defmodule Adyen.BalancePlatform.BalanceAccountInfo do
  @moduledoc """
  Provides struct and type for a BalanceAccountInfo
  """

  alias Adyen.BalancePlatform.PlatformPaymentConfiguration

  @type t :: %__MODULE__{
          accountHolderId: String.t(),
          defaultCurrencyCode: String.t() | nil,
          description: String.t() | nil,
          metadata: map | nil,
          migratedAccountCode: String.t() | nil,
          platformPaymentConfiguration: PlatformPaymentConfiguration.t() | nil,
          reference: String.t() | nil,
          timeZone: String.t() | nil
        }

  defstruct [
    :accountHolderId,
    :defaultCurrencyCode,
    :description,
    :metadata,
    :migratedAccountCode,
    :platformPaymentConfiguration,
    :reference,
    :timeZone
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderId: :string,
      defaultCurrencyCode: :string,
      description: :string,
      metadata: :map,
      migratedAccountCode: :string,
      platformPaymentConfiguration: {PlatformPaymentConfiguration, :t},
      reference: :string,
      timeZone: :string
    ]
  end
end
