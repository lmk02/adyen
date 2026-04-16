defmodule Adyen.Checkout.V72.ForexQuote do
  @moduledoc """
  Provides struct and type for a ForexQuote
  """

  @type t :: %__MODULE__{
          account: String.t() | nil,
          accountType: String.t() | nil,
          baseAmount: Adyen.Checkout.V72.Amount.t() | nil,
          basePoints: integer,
          buy: Adyen.Checkout.V72.Amount.t() | nil,
          interbank: Adyen.Checkout.V72.Amount.t() | nil,
          reference: String.t() | nil,
          sell: Adyen.Checkout.V72.Amount.t() | nil,
          signature: String.t() | nil,
          source: String.t() | nil,
          type: String.t() | nil,
          validTill: DateTime.t()
        }

  defstruct [
    :account,
    :accountType,
    :baseAmount,
    :basePoints,
    :buy,
    :interbank,
    :reference,
    :sell,
    :signature,
    :source,
    :type,
    :validTill
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      account: :string,
      accountType: :string,
      baseAmount: {Adyen.Checkout.V72.Amount, :t},
      basePoints: {:integer, "int32"},
      buy: {Adyen.Checkout.V72.Amount, :t},
      interbank: {Adyen.Checkout.V72.Amount, :t},
      reference: :string,
      sell: {Adyen.Checkout.V72.Amount, :t},
      signature: :string,
      source: :string,
      type: :string,
      validTill: {:string, "date-time"}
    ]
  end
end
