defmodule Adyen.OpenBanking.AccountIdentifiers do
  @moduledoc """
  Provides struct and type for a AccountIdentifiers
  """

  @type t :: %__MODULE__{
          ach: Adyen.OpenBanking.ACHAccountIdentifier.t() | nil,
          bacs: Adyen.OpenBanking.BACSAccountIdentifier.t() | nil,
          bsb: Adyen.OpenBanking.BSBAccountIdentifier.t() | nil,
          eft: Adyen.OpenBanking.EFTAccountIdentifier.t() | nil,
          iban: Adyen.OpenBanking.IBANAccountIdentifier.t() | nil,
          rix: Adyen.OpenBanking.RIXAccountIdentifier.t() | nil
        }

  defstruct [:ach, :bacs, :bsb, :eft, :iban, :rix]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      ach: {Adyen.OpenBanking.ACHAccountIdentifier, :t},
      bacs: {Adyen.OpenBanking.BACSAccountIdentifier, :t},
      bsb: {Adyen.OpenBanking.BSBAccountIdentifier, :t},
      eft: {Adyen.OpenBanking.EFTAccountIdentifier, :t},
      iban: {Adyen.OpenBanking.IBANAccountIdentifier, :t},
      rix: {Adyen.OpenBanking.RIXAccountIdentifier, :t}
    ]
  end
end
