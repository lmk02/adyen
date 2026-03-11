defmodule Adyen.OpenBanking.VerifiedAccount do
  @moduledoc """
  Provides struct and type for a VerifiedAccount
  """

  @type t :: %__MODULE__{
          accountId: String.t(),
          accountName: String.t(),
          accountNumber: String.t(),
          accountType: String.t(),
          bankName: String.t() | nil,
          currency: String.t(),
          identifiers: Adyen.OpenBanking.AccountIdentifiers.t(),
          parties: [Adyen.OpenBanking.AccountParty.t()]
        }

  defstruct [
    :accountId,
    :accountName,
    :accountNumber,
    :accountType,
    :bankName,
    :currency,
    :identifiers,
    :parties
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountId: :string,
      accountName: :string,
      accountNumber: :string,
      accountType: {:enum, ["CURRENT", "SAVINGS", "BUSINESS", "CREDIT_CARD", "LOAN", "UNKNOWN"]},
      bankName: :string,
      currency: :string,
      identifiers: {Adyen.OpenBanking.AccountIdentifiers, :t},
      parties: [{Adyen.OpenBanking.AccountParty, :t}]
    ]
  end
end
