defmodule Adyen.Checkout.PaymentAmountUpdateRequest do
  @moduledoc """
  Provides struct and type for a PaymentAmountUpdateRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.Amount.t(),
          applicationInfo: Adyen.Checkout.ApplicationInfo.t() | nil,
          enhancedSchemeData: Adyen.Checkout.EnhancedSchemeData.t() | nil,
          industryUsage: String.t() | nil,
          lineItems: [Adyen.Checkout.LineItem.t()] | nil,
          merchantAccount: String.t(),
          reference: String.t() | nil,
          splits: [Adyen.Checkout.Split.t()] | nil
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
      amount: {Adyen.Checkout.Amount, :t},
      applicationInfo: {Adyen.Checkout.ApplicationInfo, :t},
      enhancedSchemeData: {Adyen.Checkout.EnhancedSchemeData, :t},
      industryUsage: {:enum, ["delayedCharge", "installment", "noShow"]},
      lineItems: [{Adyen.Checkout.LineItem, :t}],
      merchantAccount: :string,
      reference: :string,
      splits: [{Adyen.Checkout.Split, :t}]
    ]
  end
end
