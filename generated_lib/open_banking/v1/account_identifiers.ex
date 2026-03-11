defmodule Adyen.OpenBanking.V1.AccountIdentifiers do
  @moduledoc """
  Provides struct and type for a AccountIdentifiers
  """

  @type t :: %__MODULE__{
          ach: Adyen.OpenBanking.V1.ACHAccountIdentifier.t() | nil,
          bacs: Adyen.OpenBanking.V1.BACSAccountIdentifier.t() | nil,
          bsb: Adyen.OpenBanking.V1.BSBAccountIdentifier.t() | nil,
          eft: Adyen.OpenBanking.V1.EFTAccountIdentifier.t() | nil,
          iban: Adyen.OpenBanking.V1.IBANAccountIdentifier.t() | nil,
          rix: Adyen.OpenBanking.V1.RIXAccountIdentifier.t() | nil
        }

  defstruct [:ach, :bacs, :bsb, :eft, :iban, :rix]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      ach: {Adyen.OpenBanking.V1.ACHAccountIdentifier, :t},
      bacs: {Adyen.OpenBanking.V1.BACSAccountIdentifier, :t},
      bsb: {Adyen.OpenBanking.V1.BSBAccountIdentifier, :t},
      eft: {Adyen.OpenBanking.V1.EFTAccountIdentifier, :t},
      iban: {Adyen.OpenBanking.V1.IBANAccountIdentifier, :t},
      rix: {Adyen.OpenBanking.V1.RIXAccountIdentifier, :t}
    ]
  end
end
