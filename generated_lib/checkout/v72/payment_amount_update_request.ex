defmodule Adyen.Checkout.V72.PaymentAmountUpdateRequest do
  @moduledoc """
  Provides struct and type for a PaymentAmountUpdateRequest
  """

  @type t :: %__MODULE__{
          adjustAuthType: String.t() | nil,
          adjustAuthorisationData: String.t() | nil,
          amount: Adyen.Checkout.V72.Amount.t(),
          applicationInfo: Adyen.Checkout.V72.ApplicationInfo.t() | nil,
          industryUsage: String.t() | nil,
          lineItems: [Adyen.Checkout.V72.LineItem.t()] | nil,
          merchantAccount: String.t(),
          mpiData: Adyen.Checkout.V72.ThreeDSecureData.t() | nil,
          reference: String.t() | nil,
          splits: [Adyen.Checkout.V72.Split.t()] | nil
        }

  defstruct [
    :adjustAuthType,
    :adjustAuthorisationData,
    :amount,
    :applicationInfo,
    :industryUsage,
    :lineItems,
    :merchantAccount,
    :mpiData,
    :reference,
    :splits
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      adjustAuthType: {:enum, ["cardholderInitiatedTransaction", "merchantInitiatedTransaction"]},
      adjustAuthorisationData: :string,
      amount: {Adyen.Checkout.V72.Amount, :t},
      applicationInfo: {Adyen.Checkout.V72.ApplicationInfo, :t},
      industryUsage: {:enum, ["delayedCharge", "installment", "noShow"]},
      lineItems: [{Adyen.Checkout.V72.LineItem, :t}],
      merchantAccount: :string,
      mpiData: {Adyen.Checkout.V72.ThreeDSecureData, :t},
      reference: :string,
      splits: [{Adyen.Checkout.V72.Split, :t}]
    ]
  end
end
