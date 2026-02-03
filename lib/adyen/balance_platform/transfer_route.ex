defmodule Adyen.BalancePlatform.TransferRoute do
  @moduledoc """
  Provides struct and type for a TransferRoute
  """

  alias Adyen.BalancePlatform.AdditionalBankIdentificationRequirement
  alias Adyen.BalancePlatform.AddressRequirement
  alias Adyen.BalancePlatform.AmountMinMaxRequirement
  alias Adyen.BalancePlatform.AmountNonZeroDecimalsRequirement
  alias Adyen.BalancePlatform.BankAccountIdentificationTypeRequirement
  alias Adyen.BalancePlatform.IbanAccountIdentificationRequirement
  alias Adyen.BalancePlatform.PaymentInstrumentRequirement
  alias Adyen.BalancePlatform.USInstantPayoutAddressRequirement
  alias Adyen.BalancePlatform.USInternationalAchAddressRequirement
  alias Adyen.BalancePlatform.USInternationalAchPriorityRequirement

  @type t :: %__MODULE__{
          category: String.t() | nil,
          country: String.t() | nil,
          currency: String.t() | nil,
          priority: String.t() | nil,
          requirements:
            [
              AdditionalBankIdentificationRequirement.t()
              | AddressRequirement.t()
              | AmountMinMaxRequirement.t()
              | AmountNonZeroDecimalsRequirement.t()
              | BankAccountIdentificationTypeRequirement.t()
              | IbanAccountIdentificationRequirement.t()
              | PaymentInstrumentRequirement.t()
              | USInstantPayoutAddressRequirement.t()
              | USInternationalAchAddressRequirement.t()
              | USInternationalAchPriorityRequirement.t()
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
          {AdditionalBankIdentificationRequirement, :t},
          {AddressRequirement, :t},
          {AmountMinMaxRequirement, :t},
          {AmountNonZeroDecimalsRequirement, :t},
          {BankAccountIdentificationTypeRequirement, :t},
          {IbanAccountIdentificationRequirement, :t},
          {PaymentInstrumentRequirement, :t},
          {USInstantPayoutAddressRequirement, :t},
          {USInternationalAchAddressRequirement, :t},
          {USInternationalAchPriorityRequirement, :t}
        ]
      ]
    ]
  end
end
