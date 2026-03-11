defmodule Adyen.BalancePlatform.V2.BankAccountIdentificationValidationRequest do
  @moduledoc """
  Provides struct and type for a BankAccountIdentificationValidationRequest
  """

  @type t :: %__MODULE__{
          accountIdentification:
            Adyen.BalancePlatform.V2.AULocalAccountIdentification.t()
            | Adyen.BalancePlatform.V2.BRLocalAccountIdentification.t()
            | Adyen.BalancePlatform.V2.CALocalAccountIdentification.t()
            | Adyen.BalancePlatform.V2.CZLocalAccountIdentification.t()
            | Adyen.BalancePlatform.V2.DKLocalAccountIdentification.t()
            | Adyen.BalancePlatform.V2.HKLocalAccountIdentification.t()
            | Adyen.BalancePlatform.V2.HULocalAccountIdentification.t()
            | Adyen.BalancePlatform.V2.IbanAccountIdentification.t()
            | Adyen.BalancePlatform.V2.NOLocalAccountIdentification.t()
            | Adyen.BalancePlatform.V2.NZLocalAccountIdentification.t()
            | Adyen.BalancePlatform.V2.NumberAndBicAccountIdentification.t()
            | Adyen.BalancePlatform.V2.PLLocalAccountIdentification.t()
            | Adyen.BalancePlatform.V2.SELocalAccountIdentification.t()
            | Adyen.BalancePlatform.V2.SGLocalAccountIdentification.t()
            | Adyen.BalancePlatform.V2.UKLocalAccountIdentification.t()
            | Adyen.BalancePlatform.V2.USLocalAccountIdentification.t()
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
           {Adyen.BalancePlatform.V2.AULocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V2.BRLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V2.CALocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V2.CZLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V2.DKLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V2.HKLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V2.HULocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V2.IbanAccountIdentification, :t},
           {Adyen.BalancePlatform.V2.NOLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V2.NZLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V2.NumberAndBicAccountIdentification, :t},
           {Adyen.BalancePlatform.V2.PLLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V2.SELocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V2.SGLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V2.UKLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V2.USLocalAccountIdentification, :t}
         ]}
    ]
  end
end
