defmodule Adyen.BalancePlatform.TransferRoute do
  @moduledoc """
  Provides struct and type for a TransferRoute
  """

  @type t :: %__MODULE__{
          category: String.t() | nil,
          country: String.t() | nil,
          currency: String.t() | nil,
          priority: String.t() | nil,
          requirements:
            [
              Adyen.BalancePlatform.AdditionalBankIdentificationRequirement.t()
              | Adyen.BalancePlatform.AddressRequirement.t()
              | Adyen.BalancePlatform.AmountMinMaxRequirement.t()
              | Adyen.BalancePlatform.AmountNonZeroDecimalsRequirement.t()
              | Adyen.BalancePlatform.BankAccountIdentificationTypeRequirement.t()
              | Adyen.BalancePlatform.IbanAccountIdentificationRequirement.t()
              | Adyen.BalancePlatform.PaymentInstrumentRequirement.t()
              | Adyen.BalancePlatform.USInstantPayoutAddressRequirement.t()
              | Adyen.BalancePlatform.USInternationalAchAddressRequirement.t()
              | Adyen.BalancePlatform.USInternationalAchPriorityRequirement.t()
            ]
            | nil
        }

  defstruct [:category, :country, :currency, :priority, :requirements]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      category:
        {:enum,
         [
           "bank",
           "card",
           "grants",
           "interest",
           "internal",
           "issuedCard",
           "migration",
           "platformPayment",
           "topUp",
           "upgrade"
         ]},
      country: :string,
      currency: :string,
      priority: {:enum, ["crossBorder", "fast", "instant", "internal", "regular", "wire"]},
      requirements: [
        union: [
          {Adyen.BalancePlatform.AdditionalBankIdentificationRequirement, :t},
          {Adyen.BalancePlatform.AddressRequirement, :t},
          {Adyen.BalancePlatform.AmountMinMaxRequirement, :t},
          {Adyen.BalancePlatform.AmountNonZeroDecimalsRequirement, :t},
          {Adyen.BalancePlatform.BankAccountIdentificationTypeRequirement, :t},
          {Adyen.BalancePlatform.IbanAccountIdentificationRequirement, :t},
          {Adyen.BalancePlatform.PaymentInstrumentRequirement, :t},
          {Adyen.BalancePlatform.USInstantPayoutAddressRequirement, :t},
          {Adyen.BalancePlatform.USInternationalAchAddressRequirement, :t},
          {Adyen.BalancePlatform.USInternationalAchPriorityRequirement, :t}
        ]
      ]
    ]
  end
end
