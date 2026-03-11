defmodule Adyen.BalancePlatform.BankAccountIdentificationValidationRequest do
  @moduledoc """
  Provides struct and type for a BankAccountIdentificationValidationRequest
  """

  @type t :: %__MODULE__{
          accountIdentification:
            Adyen.BalancePlatform.AULocalAccountIdentification.t()
            | Adyen.BalancePlatform.BRLocalAccountIdentification.t()
            | Adyen.BalancePlatform.CALocalAccountIdentification.t()
            | Adyen.BalancePlatform.CZLocalAccountIdentification.t()
            | Adyen.BalancePlatform.DKLocalAccountIdentification.t()
            | Adyen.BalancePlatform.HKLocalAccountIdentification.t()
            | Adyen.BalancePlatform.HULocalAccountIdentification.t()
            | Adyen.BalancePlatform.IbanAccountIdentification.t()
            | Adyen.BalancePlatform.NOLocalAccountIdentification.t()
            | Adyen.BalancePlatform.NZLocalAccountIdentification.t()
            | Adyen.BalancePlatform.NumberAndBicAccountIdentification.t()
            | Adyen.BalancePlatform.PLLocalAccountIdentification.t()
            | Adyen.BalancePlatform.SELocalAccountIdentification.t()
            | Adyen.BalancePlatform.SGLocalAccountIdentification.t()
            | Adyen.BalancePlatform.UKLocalAccountIdentification.t()
            | Adyen.BalancePlatform.USLocalAccountIdentification.t()
        }

  defstruct [:accountIdentification]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountIdentification:
        {:union,
         [
           {Adyen.BalancePlatform.AULocalAccountIdentification, :t},
           {Adyen.BalancePlatform.BRLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.CALocalAccountIdentification, :t},
           {Adyen.BalancePlatform.CZLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.DKLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.HKLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.HULocalAccountIdentification, :t},
           {Adyen.BalancePlatform.IbanAccountIdentification, :t},
           {Adyen.BalancePlatform.NOLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.NZLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.NumberAndBicAccountIdentification, :t},
           {Adyen.BalancePlatform.PLLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.SELocalAccountIdentification, :t},
           {Adyen.BalancePlatform.SGLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.UKLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.USLocalAccountIdentification, :t}
         ]}
    ]
  end
end
