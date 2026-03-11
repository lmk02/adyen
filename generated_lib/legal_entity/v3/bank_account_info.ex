defmodule Adyen.LegalEntity.V3.BankAccountInfo do
  @moduledoc """
  Provides struct and type for a BankAccountInfo
  """

  @type t :: %__MODULE__{
          accountIdentification:
            Adyen.LegalEntity.V3.AULocalAccountIdentification.t()
            | Adyen.LegalEntity.V3.CALocalAccountIdentification.t()
            | Adyen.LegalEntity.V3.CZLocalAccountIdentification.t()
            | Adyen.LegalEntity.V3.DKLocalAccountIdentification.t()
            | Adyen.LegalEntity.V3.HKLocalAccountIdentification.t()
            | Adyen.LegalEntity.V3.HULocalAccountIdentification.t()
            | Adyen.LegalEntity.V3.IbanAccountIdentification.t()
            | Adyen.LegalEntity.V3.NOLocalAccountIdentification.t()
            | Adyen.LegalEntity.V3.NZLocalAccountIdentification.t()
            | Adyen.LegalEntity.V3.NumberAndBicAccountIdentification.t()
            | Adyen.LegalEntity.V3.PLLocalAccountIdentification.t()
            | Adyen.LegalEntity.V3.SELocalAccountIdentification.t()
            | Adyen.LegalEntity.V3.SGLocalAccountIdentification.t()
            | Adyen.LegalEntity.V3.UKLocalAccountIdentification.t()
            | Adyen.LegalEntity.V3.USLocalAccountIdentification.t()
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
           {Adyen.LegalEntity.V3.AULocalAccountIdentification, :t},
           {Adyen.LegalEntity.V3.CALocalAccountIdentification, :t},
           {Adyen.LegalEntity.V3.CZLocalAccountIdentification, :t},
           {Adyen.LegalEntity.V3.DKLocalAccountIdentification, :t},
           {Adyen.LegalEntity.V3.HKLocalAccountIdentification, :t},
           {Adyen.LegalEntity.V3.HULocalAccountIdentification, :t},
           {Adyen.LegalEntity.V3.IbanAccountIdentification, :t},
           {Adyen.LegalEntity.V3.NOLocalAccountIdentification, :t},
           {Adyen.LegalEntity.V3.NZLocalAccountIdentification, :t},
           {Adyen.LegalEntity.V3.NumberAndBicAccountIdentification, :t},
           {Adyen.LegalEntity.V3.PLLocalAccountIdentification, :t},
           {Adyen.LegalEntity.V3.SELocalAccountIdentification, :t},
           {Adyen.LegalEntity.V3.SGLocalAccountIdentification, :t},
           {Adyen.LegalEntity.V3.UKLocalAccountIdentification, :t},
           {Adyen.LegalEntity.V3.USLocalAccountIdentification, :t}
         ]},
      accountType: :string,
      bankName: :string,
      countryCode: :string,
      trustedSource: :boolean
    ]
  end
end
