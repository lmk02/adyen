defmodule Adyen.Checkout.V64.PaymentCaptureRequest do
  @moduledoc """
  Provides struct and type for a PaymentCaptureRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V64.Amount.t(),
          applicationInfo: Adyen.Checkout.V64.ApplicationInfo.t() | nil,
          lineItems: [Adyen.Checkout.V64.LineItem.t()] | nil,
          merchantAccount: String.t(),
          reference: String.t() | nil,
          splits: [Adyen.Checkout.V64.Split.t()] | nil
        }

  defstruct [:amount, :applicationInfo, :lineItems, :merchantAccount, :reference, :splits]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Checkout.V64.Amount, :t},
      applicationInfo: {Adyen.Checkout.V64.ApplicationInfo, :t},
      lineItems: [{Adyen.Checkout.V64.LineItem, :t}],
      merchantAccount: :string,
      reference: :string,
      splits: [{Adyen.Checkout.V64.Split, :t}]
    ]
  end
end
