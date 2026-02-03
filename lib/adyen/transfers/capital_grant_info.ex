defmodule Adyen.Transfers.CapitalGrantInfo do
  @moduledoc """
  Provides struct and type for a CapitalGrantInfo
  """

  alias Adyen.Transfers.Counterparty

  @type t :: %__MODULE__{
          counterparty: Counterparty.t() | nil,
          grantAccountId: String.t(),
          grantOfferId: String.t()
        }

  defstruct [:counterparty, :grantAccountId, :grantOfferId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      counterparty: {Counterparty, :t},
      grantAccountId: :string,
      grantOfferId: :string
    ]
  end
end
