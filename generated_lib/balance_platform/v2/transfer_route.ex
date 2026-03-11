defmodule Adyen.BalancePlatform.V2.TransferRoute do
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
              Adyen.BalancePlatform.V2.AdditionalBankIdentificationRequirement.t()
              | Adyen.BalancePlatform.V2.AddressRequirement.t()
              | Adyen.BalancePlatform.V2.AmountMinMaxRequirement.t()
              | Adyen.BalancePlatform.V2.AmountNonZeroDecimalsRequirement.t()
              | Adyen.BalancePlatform.V2.BankAccountIdentificationTypeRequirement.t()
              | Adyen.BalancePlatform.V2.IbanAccountIdentificationRequirement.t()
              | Adyen.BalancePlatform.V2.PaymentInstrumentRequirement.t()
              | Adyen.BalancePlatform.V2.USInstantPayoutAddressRequirement.t()
              | Adyen.BalancePlatform.V2.USInternationalAchAddressRequirement.t()
              | Adyen.BalancePlatform.V2.USInternationalAchPriorityRequirement.t()
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
          {Adyen.BalancePlatform.V2.AdditionalBankIdentificationRequirement, :t},
          {Adyen.BalancePlatform.V2.AddressRequirement, :t},
          {Adyen.BalancePlatform.V2.AmountMinMaxRequirement, :t},
          {Adyen.BalancePlatform.V2.AmountNonZeroDecimalsRequirement, :t},
          {Adyen.BalancePlatform.V2.BankAccountIdentificationTypeRequirement, :t},
          {Adyen.BalancePlatform.V2.IbanAccountIdentificationRequirement, :t},
          {Adyen.BalancePlatform.V2.PaymentInstrumentRequirement, :t},
          {Adyen.BalancePlatform.V2.USInstantPayoutAddressRequirement, :t},
          {Adyen.BalancePlatform.V2.USInternationalAchAddressRequirement, :t},
          {Adyen.BalancePlatform.V2.USInternationalAchPriorityRequirement, :t}
        ]
      ]
    ]
  end
end
