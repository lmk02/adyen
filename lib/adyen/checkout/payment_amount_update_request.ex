defmodule Adyen.Checkout.PaymentAmountUpdateRequest do
  @moduledoc """
  Provides struct and type for a PaymentAmountUpdateRequest
  """

  alias Adyen.Checkout.Amount
  alias Adyen.Checkout.ApplicationInfo
  alias Adyen.Checkout.EnhancedSchemeData
  alias Adyen.Checkout.LineItem
  alias Adyen.Checkout.Split

  @type t :: %__MODULE__{
          amount: Amount.t(),
          applicationInfo: ApplicationInfo.t() | nil,
          enhancedSchemeData: EnhancedSchemeData.t() | nil,
          industryUsage: String.t() | nil,
          lineItems: [LineItem.t()] | nil,
          merchantAccount: String.t(),
          reference: String.t() | nil,
          splits: [Split.t()] | nil
        }

  defstruct [
    :amount,
    :applicationInfo,
    :enhancedSchemeData,
    :industryUsage,
    :lineItems,
    :merchantAccount,
    :reference,
    :splits
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Amount, :t},
      applicationInfo: {ApplicationInfo, :t},
      enhancedSchemeData: {EnhancedSchemeData, :t},
      industryUsage: {:enum, ["delayedCharge", "installment", "noShow"]},
      lineItems: [{LineItem, :t}],
      merchantAccount: :string,
      reference: :string,
      splits: [{Split, :t}]
    ]
  end
end
