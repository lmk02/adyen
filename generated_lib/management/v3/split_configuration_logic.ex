defmodule Adyen.Management.V3.SplitConfigurationLogic do
  @moduledoc """
  Provides struct and type for a SplitConfigurationLogic
  """

  @type t :: %__MODULE__{
          acquiringFees: String.t() | nil,
          additionalCommission: Adyen.Management.V3.AdditionalCommission.t() | nil,
          adyenCommission: String.t() | nil,
          adyenFees: String.t() | nil,
          adyenMarkup: String.t() | nil,
          chargeback: String.t() | nil,
          chargebackCostAllocation: String.t() | nil,
          commission: Adyen.Management.V3.Commission.t(),
          interchange: String.t() | nil,
          paymentFee: String.t() | nil,
          refund: String.t() | nil,
          refundCostAllocation: String.t() | nil,
          remainder: String.t() | nil,
          schemeFee: String.t() | nil,
          splitLogicId: String.t() | nil,
          surcharge: String.t() | nil,
          tip: String.t() | nil
        }

  defstruct [
    :acquiringFees,
    :additionalCommission,
    :adyenCommission,
    :adyenFees,
    :adyenMarkup,
    :chargeback,
    :chargebackCostAllocation,
    :commission,
    :interchange,
    :paymentFee,
    :refund,
    :refundCostAllocation,
    :remainder,
    :schemeFee,
    :splitLogicId,
    :surcharge,
    :tip
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      acquiringFees: {:enum, ["deductFromLiableAccount", "deductFromOneBalanceAccount"]},
      additionalCommission: {Adyen.Management.V3.AdditionalCommission, :t},
      adyenCommission: {:enum, ["deductFromLiableAccount", "deductFromOneBalanceAccount"]},
      adyenFees: {:enum, ["deductFromLiableAccount", "deductFromOneBalanceAccount"]},
      adyenMarkup: {:enum, ["deductFromLiableAccount", "deductFromOneBalanceAccount"]},
      chargeback:
        {:enum,
         ["deductFromLiableAccount", "deductFromOneBalanceAccount", "deductAccordingToSplitRatio"]},
      chargebackCostAllocation:
        {:enum, ["deductFromLiableAccount", "deductFromOneBalanceAccount"]},
      commission: {Adyen.Management.V3.Commission, :t},
      interchange: {:enum, ["deductFromLiableAccount", "deductFromOneBalanceAccount"]},
      paymentFee: {:enum, ["deductFromLiableAccount", "deductFromOneBalanceAccount"]},
      refund:
        {:enum,
         ["deductFromLiableAccount", "deductFromOneBalanceAccount", "deductAccordingToSplitRatio"]},
      refundCostAllocation: {:enum, ["deductFromLiableAccount", "deductFromOneBalanceAccount"]},
      remainder: {:enum, ["addToLiableAccount", "addToOneBalanceAccount"]},
      schemeFee: {:enum, ["deductFromLiableAccount", "deductFromOneBalanceAccount"]},
      splitLogicId: :string,
      surcharge: {:enum, ["addToLiableAccount", "addToOneBalanceAccount"]},
      tip: {:enum, ["addToLiableAccount", "addToOneBalanceAccount"]}
    ]
  end
end
