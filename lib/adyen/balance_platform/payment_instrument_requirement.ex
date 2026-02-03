defmodule Adyen.BalancePlatform.PaymentInstrumentRequirement do
  @moduledoc """
  Provides struct and type for a PaymentInstrumentRequirement
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          issuingCountryCode: String.t() | nil,
          issuingCountryCodes: [String.t()] | nil,
          onlyForCrossBalancePlatform: boolean | nil,
          paymentInstrumentType: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :description,
    :issuingCountryCode,
    :issuingCountryCodes,
    :onlyForCrossBalancePlatform,
    :paymentInstrumentType,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      description: :string,
      issuingCountryCode: :string,
      issuingCountryCodes: [:string],
      onlyForCrossBalancePlatform: :boolean,
      paymentInstrumentType: {:enum, ["BankAccount", "Card"]},
      type: {:const, "paymentInstrumentRequirement"}
    ]
  end
end
