defmodule Adyen.BalancePlatform.TransferRouteRequest do
  @moduledoc """
  Provides struct and type for a TransferRouteRequest
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          balancePlatform: String.t(),
          category: String.t(),
          counterparty: Adyen.BalancePlatform.Counterparty.t() | nil,
          country: String.t() | nil,
          currency: String.t(),
          priorities: [String.t()] | nil
        }

  defstruct [
    :balanceAccountId,
    :balancePlatform,
    :category,
    :counterparty,
    :country,
    :currency,
    :priorities
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountId: :string,
      balancePlatform: :string,
      category: {:const, "bank"},
      counterparty: {Adyen.BalancePlatform.Counterparty, :t},
      country: :string,
      currency: :string,
      priorities: [enum: ["crossBorder", "fast", "instant", "internal", "regular", "wire"]]
    ]
  end
end
