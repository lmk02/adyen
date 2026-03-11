defmodule Adyen.LegalEntity.BankAccountInfo do
  @moduledoc """
  Provides struct and type for a BankAccountInfo
  """

  @type t :: %__MODULE__{
          accountIdentification:
            Adyen.LegalEntity.AULocalAccountIdentification.t()
            | Adyen.LegalEntity.CALocalAccountIdentification.t()
            | Adyen.LegalEntity.CZLocalAccountIdentification.t()
            | Adyen.LegalEntity.DKLocalAccountIdentification.t()
            | Adyen.LegalEntity.HKLocalAccountIdentification.t()
            | Adyen.LegalEntity.HULocalAccountIdentification.t()
            | Adyen.LegalEntity.IbanAccountIdentification.t()
            | Adyen.LegalEntity.NOLocalAccountIdentification.t()
            | Adyen.LegalEntity.NZLocalAccountIdentification.t()
            | Adyen.LegalEntity.NumberAndBicAccountIdentification.t()
            | Adyen.LegalEntity.PLLocalAccountIdentification.t()
            | Adyen.LegalEntity.SELocalAccountIdentification.t()
            | Adyen.LegalEntity.SGLocalAccountIdentification.t()
            | Adyen.LegalEntity.UKLocalAccountIdentification.t()
            | Adyen.LegalEntity.USLocalAccountIdentification.t()
            | nil,
          accountType: String.t() | nil,
          bankName: String.t() | nil,
          countryCode: String.t() | nil,
          trustedSource: boolean | nil
        }

  defstruct [:accountIdentification, :accountType, :bankName, :countryCode, :trustedSource]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountIdentification:
        {:union,
         [
           {Adyen.LegalEntity.AULocalAccountIdentification, :t},
           {Adyen.LegalEntity.CALocalAccountIdentification, :t},
           {Adyen.LegalEntity.CZLocalAccountIdentification, :t},
           {Adyen.LegalEntity.DKLocalAccountIdentification, :t},
           {Adyen.LegalEntity.HKLocalAccountIdentification, :t},
           {Adyen.LegalEntity.HULocalAccountIdentification, :t},
           {Adyen.LegalEntity.IbanAccountIdentification, :t},
           {Adyen.LegalEntity.NOLocalAccountIdentification, :t},
           {Adyen.LegalEntity.NZLocalAccountIdentification, :t},
           {Adyen.LegalEntity.NumberAndBicAccountIdentification, :t},
           {Adyen.LegalEntity.PLLocalAccountIdentification, :t},
           {Adyen.LegalEntity.SELocalAccountIdentification, :t},
           {Adyen.LegalEntity.SGLocalAccountIdentification, :t},
           {Adyen.LegalEntity.UKLocalAccountIdentification, :t},
           {Adyen.LegalEntity.USLocalAccountIdentification, :t}
         ]},
      accountType: :string,
      bankName: :string,
      countryCode: :string,
      trustedSource: :boolean
    ]
  end
end
