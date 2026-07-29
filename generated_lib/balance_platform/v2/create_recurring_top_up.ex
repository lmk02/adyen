defmodule Adyen.BalancePlatform.V2.CreateRecurringTopUp do
  @moduledoc """
  Provides struct and type for a CreateRecurringTopUp
  """

  @type t :: %__MODULE__{
          counterparty: Adyen.BalancePlatform.V2.TopUpCounterparty.t(),
          description: String.t(),
          referenceForBeneficiary: String.t() | nil,
          status: String.t() | nil,
          topUpAmount: Adyen.BalancePlatform.V2.TopUpAmount.t(),
          trigger: Adyen.BalancePlatform.V2.Trigger.t()
        }

  defstruct [
    :counterparty,
    :description,
    :referenceForBeneficiary,
    :status,
    :topUpAmount,
    :trigger
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      counterparty: {Adyen.BalancePlatform.V2.TopUpCounterparty, :t},
      description: :string,
      referenceForBeneficiary: :string,
      status: {:enum, ["active", "inactive"]},
      topUpAmount: {Adyen.BalancePlatform.V2.TopUpAmount, :t},
      trigger: {Adyen.BalancePlatform.V2.Trigger, :t}
    ]
  end
end
