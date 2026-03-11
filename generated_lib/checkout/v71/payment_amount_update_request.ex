defmodule Adyen.Checkout.V71.PaymentAmountUpdateRequest do
  @moduledoc """
  Provides struct and type for a PaymentAmountUpdateRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V71.Amount.t(),
          applicationInfo: Adyen.Checkout.V71.ApplicationInfo.t() | nil,
          enhancedSchemeData: Adyen.Checkout.V71.EnhancedSchemeData.t() | nil,
          industryUsage: String.t() | nil,
          lineItems: [Adyen.Checkout.V71.LineItem.t()] | nil,
          merchantAccount: String.t(),
          reference: String.t() | nil,
          splits: [Adyen.Checkout.V71.Split.t()] | nil
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
      amount: {Adyen.Checkout.V71.Amount, :t},
      applicationInfo: {Adyen.Checkout.V71.ApplicationInfo, :t},
      enhancedSchemeData: {Adyen.Checkout.V71.EnhancedSchemeData, :t},
      industryUsage: {:enum, ["delayedCharge", "installment", "noShow"]},
      lineItems: [{Adyen.Checkout.V71.LineItem, :t}],
      merchantAccount: :string,
      reference: :string,
      splits: [{Adyen.Checkout.V71.Split, :t}]
    ]
  end
end
