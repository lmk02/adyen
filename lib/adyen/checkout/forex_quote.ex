defmodule Adyen.Checkout.ForexQuote do
  @moduledoc """
  Provides struct and type for a ForexQuote
  """

  alias Adyen.Checkout.Amount

  @type t :: %__MODULE__{
          account: String.t() | nil,
          accountType: String.t() | nil,
          baseAmount: Amount.t() | nil,
          basePoints: integer,
          buy: Amount.t() | nil,
          interbank: Amount.t() | nil,
          reference: String.t() | nil,
          sell: Amount.t() | nil,
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
      baseAmount: {Amount, :t},
      basePoints: {:integer, "int32"},
      buy: {Amount, :t},
      interbank: {Amount, :t},
      reference: :string,
      sell: {Amount, :t},
      signature: :string,
      source: :string,
      type: :string,
      validTill: {:string, "date-time"}
    ]
  end
end
