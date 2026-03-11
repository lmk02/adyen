defmodule Adyen.OpenBanking.V1.AccountVerificationRoutesRequest do
  @moduledoc """
  Provides struct and type for a AccountVerificationRoutesRequest
  """

  @type t :: %__MODULE__{
          country: String.t(),
          locale: String.t() | nil,
          redirectUrl: String.t(),
          state: String.t() | nil
        }

  defstruct [:country, :locale, :redirectUrl, :state]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
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
      locale: :string,
      redirectUrl: {:string, "url"},
      state: :string
    ]
  end
end
