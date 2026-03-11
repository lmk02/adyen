defmodule Adyen.BalancePlatform.V1.TransactionRule do
  @moduledoc """
  Provides struct and type for a TransactionRule
  """

  @type t :: %__MODULE__{
          amount: Adyen.BalancePlatform.V1.Amount.t() | nil,
          balancePlatformId: String.t() | nil,
          countries: [String.t()] | nil,
          description: String.t(),
          endDate: String.t() | nil,
          entryModes: [String.t()] | nil,
          id: String.t() | nil,
          interval: Adyen.BalancePlatform.V1.TransactionRuleInterval.t(),
          maxTransactions: integer | nil,
          mccs: [String.t()] | nil,
          paymentInstrumentGroupId: String.t() | nil,
          paymentInstrumentId: String.t() | nil,
          processingTypes: [String.t()] | nil,
          reference: String.t(),
          startDate: String.t() | nil,
          status: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :amount,
    :balancePlatformId,
    :countries,
    :description,
    :endDate,
    :entryModes,
    :id,
    :interval,
    :maxTransactions,
    :mccs,
    :paymentInstrumentGroupId,
    :paymentInstrumentId,
    :processingTypes,
    :reference,
    :startDate,
    :status,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.BalancePlatform.V1.Amount, :t},
      balancePlatformId: :string,
      countries: [:string],
      description: :string,
      endDate: :string,
      entryModes: [
        enum: [
          "barcode",
          "chip",
          "cof",
          "contactless",
          "magstripe",
          "manual",
          "ocr",
          "server",
          "unknown"
        ]
      ],
      id: :string,
      interval: {Adyen.BalancePlatform.V1.TransactionRuleInterval, :t},
      maxTransactions: {:integer, "int32"},
      mccs: [:string],
      paymentInstrumentGroupId: :string,
      paymentInstrumentId: :string,
      processingTypes: [
        enum: [
          "atmWithdraw",
          "balanceInquiry",
          "ecommerce",
          "moto",
          "pos",
          "recurring",
          "token",
          "unknown"
        ]
      ],
      reference: :string,
      startDate: :string,
      status: {:enum, ["active", "inactive"]},
      type: {:enum, ["allowList", "blockList", "maxUsage", "velocity"]}
    ]
  end
end
