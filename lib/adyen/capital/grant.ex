defmodule Adyen.Capital.Grant do
  @moduledoc """
  Provides struct and type for a Grant
  """

  @type t :: %__MODULE__{
          balances: Adyen.Capital.Balance.t(),
          counterparty: Adyen.Capital.GrantCounterparty.t() | nil,
          grantAccountId: String.t(),
          grantOfferId: String.t(),
          id: String.t(),
          status: Adyen.Capital.Status.t()
        }

  defstruct [:balances, :counterparty, :grantAccountId, :grantOfferId, :id, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balances: {Adyen.Capital.Balance, :t},
      counterparty: {Adyen.Capital.GrantCounterparty, :t},
      grantAccountId: :string,
      grantOfferId: :string,
      id: :string,
      status: {Adyen.Capital.Status, :t}
    ]
  end
end
