defmodule Adyen.Capital.V1.Grant do
  @moduledoc """
  Provides struct and type for a Grant
  """

  @type t :: %__MODULE__{
          balances: Adyen.Capital.V1.Balance.t(),
          counterparty: Adyen.Capital.V1.GrantCounterparty.t() | nil,
          grantAccountId: String.t(),
          grantOfferId: String.t(),
          id: String.t(),
          status: Adyen.Capital.V1.Status.t()
        }

  defstruct [:balances, :counterparty, :grantAccountId, :grantOfferId, :id, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balances: {Adyen.Capital.V1.Balance, :t},
      counterparty: {Adyen.Capital.V1.GrantCounterparty, :t},
      grantAccountId: :string,
      grantOfferId: :string,
      id: :string,
      status: {Adyen.Capital.V1.Status, :t}
    ]
  end
end
