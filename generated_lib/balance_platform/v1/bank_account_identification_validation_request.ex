defmodule Adyen.BalancePlatform.V1.BankAccountIdentificationValidationRequest do
  @moduledoc """
  Provides struct and type for a BankAccountIdentificationValidationRequest
  """

  @type t :: %__MODULE__{
          accountIdentification:
            Adyen.BalancePlatform.V1.AULocalAccountIdentification.t()
            | Adyen.BalancePlatform.V1.CALocalAccountIdentification.t()
            | Adyen.BalancePlatform.V1.CZLocalAccountIdentification.t()
            | Adyen.BalancePlatform.V1.HULocalAccountIdentification.t()
            | Adyen.BalancePlatform.V1.IbanAccountIdentification.t()
            | Adyen.BalancePlatform.V1.NOLocalAccountIdentification.t()
            | Adyen.BalancePlatform.V1.NumberAndBicAccountIdentification.t()
            | Adyen.BalancePlatform.V1.PLLocalAccountIdentification.t()
            | Adyen.BalancePlatform.V1.SELocalAccountIdentification.t()
            | Adyen.BalancePlatform.V1.SGLocalAccountIdentification.t()
            | Adyen.BalancePlatform.V1.UKLocalAccountIdentification.t()
            | Adyen.BalancePlatform.V1.USLocalAccountIdentification.t()
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
           {Adyen.BalancePlatform.V1.AULocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V1.CALocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V1.CZLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V1.HULocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V1.IbanAccountIdentification, :t},
           {Adyen.BalancePlatform.V1.NOLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V1.NumberAndBicAccountIdentification, :t},
           {Adyen.BalancePlatform.V1.PLLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V1.SELocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V1.SGLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V1.UKLocalAccountIdentification, :t},
           {Adyen.BalancePlatform.V1.USLocalAccountIdentification, :t}
         ]}
    ]
  end
end
