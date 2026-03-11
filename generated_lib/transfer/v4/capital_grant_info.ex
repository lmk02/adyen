defmodule Adyen.Transfer.V4.CapitalGrantInfo do
  @moduledoc """
  Provides struct and type for a CapitalGrantInfo
  """

  @type t :: %__MODULE__{
          counterparty: Adyen.Transfer.V4.GrantInfoCounterparty.t() | nil,
          grantAccountId: String.t(),
          grantOfferId: String.t()
        }

  defstruct [:counterparty, :grantAccountId, :grantOfferId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      counterparty: {Adyen.Transfer.V4.GrantInfoCounterparty, :t},
      grantAccountId: :string,
      grantOfferId: :string
    ]
  end
end
