defmodule Adyen.OpenBanking.AccountVerificationReportResponse do
  @moduledoc """
  Provides struct and type for a AccountVerificationReportResponse
  """

  @type t :: %__MODULE__{
          accounts: [Adyen.OpenBanking.VerifiedAccount.t()],
          country: String.t(),
          id: String.t()
        }

  defstruct [:accounts, :country, :id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accounts: [{Adyen.OpenBanking.VerifiedAccount, :t}],
      country:
        {:enum,
         [
           "SE",
           "FI",
           "NO",
           "DK",
           "NL",
           "IT",
           "DE",
           "AT",
           "ES",
           "PT",
           "FR",
           "GB",
           "BE",
           "LV",
           "LT",
           "PL",
           "EE",
           "IE",
           "US",
           "CA",
           "AU"
         ]},
      id: :string
    ]
  end
end
