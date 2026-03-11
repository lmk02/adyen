defmodule Adyen.Checkout.V53.PaymentAmountUpdateRequest do
  @moduledoc """
  Provides struct and type for a PaymentAmountUpdateRequest
  """

  @type t :: %__MODULE__{
          amount: Adyen.Checkout.V53.Amount.t(),
          applicationInfo: Adyen.Checkout.V53.ApplicationInfo.t() | nil,
          merchantAccount: String.t(),
          reason: String.t() | nil,
          reference: String.t() | nil,
          splits: [Adyen.Checkout.V53.Split.t()] | nil
        }

  defstruct [:amount, :applicationInfo, :merchantAccount, :reason, :reference, :splits]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {Adyen.Checkout.V53.Amount, :t},
      applicationInfo: {Adyen.Checkout.V53.ApplicationInfo, :t},
      merchantAccount: :string,
      reason: {:enum, ["delayedCharge", "noShow"]},
      reference: :string,
      splits: [{Adyen.Checkout.V53.Split, :t}]
    ]
  end
end
