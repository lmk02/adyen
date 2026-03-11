defmodule Adyen.LegalEntity.V4.BankAccountInfo do
  @moduledoc """
  Provides struct and type for a BankAccountInfo
  """

  @type t :: %__MODULE__{
          accountIdentification:
            Adyen.LegalEntity.V4.AULocalAccountIdentification.t()
            | Adyen.LegalEntity.V4.CALocalAccountIdentification.t()
            | Adyen.LegalEntity.V4.CZLocalAccountIdentification.t()
            | Adyen.LegalEntity.V4.DKLocalAccountIdentification.t()
            | Adyen.LegalEntity.V4.HKLocalAccountIdentification.t()
            | Adyen.LegalEntity.V4.HULocalAccountIdentification.t()
            | Adyen.LegalEntity.V4.IbanAccountIdentification.t()
            | Adyen.LegalEntity.V4.NOLocalAccountIdentification.t()
            | Adyen.LegalEntity.V4.NZLocalAccountIdentification.t()
            | Adyen.LegalEntity.V4.NumberAndBicAccountIdentification.t()
            | Adyen.LegalEntity.V4.PLLocalAccountIdentification.t()
            | Adyen.LegalEntity.V4.SELocalAccountIdentification.t()
            | Adyen.LegalEntity.V4.SGLocalAccountIdentification.t()
            | Adyen.LegalEntity.V4.UKLocalAccountIdentification.t()
            | Adyen.LegalEntity.V4.USLocalAccountIdentification.t()
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
           {Adyen.LegalEntity.V4.AULocalAccountIdentification, :t},
           {Adyen.LegalEntity.V4.CALocalAccountIdentification, :t},
           {Adyen.LegalEntity.V4.CZLocalAccountIdentification, :t},
           {Adyen.LegalEntity.V4.DKLocalAccountIdentification, :t},
           {Adyen.LegalEntity.V4.HKLocalAccountIdentification, :t},
           {Adyen.LegalEntity.V4.HULocalAccountIdentification, :t},
           {Adyen.LegalEntity.V4.IbanAccountIdentification, :t},
           {Adyen.LegalEntity.V4.NOLocalAccountIdentification, :t},
           {Adyen.LegalEntity.V4.NZLocalAccountIdentification, :t},
           {Adyen.LegalEntity.V4.NumberAndBicAccountIdentification, :t},
           {Adyen.LegalEntity.V4.PLLocalAccountIdentification, :t},
           {Adyen.LegalEntity.V4.SELocalAccountIdentification, :t},
           {Adyen.LegalEntity.V4.SGLocalAccountIdentification, :t},
           {Adyen.LegalEntity.V4.UKLocalAccountIdentification, :t},
           {Adyen.LegalEntity.V4.USLocalAccountIdentification, :t}
         ]},
      accountType: :string,
      bankName: :string,
      countryCode: :string,
      trustedSource: :boolean
    ]
  end
end
