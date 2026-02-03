defmodule Adyen.BalancePlatform.BankAccount do
  @moduledoc """
  Provides struct and type for a BankAccount
  """

  alias Adyen.BalancePlatform.AULocalAccountIdentification
  alias Adyen.BalancePlatform.BRLocalAccountIdentification
  alias Adyen.BalancePlatform.CALocalAccountIdentification
  alias Adyen.BalancePlatform.CZLocalAccountIdentification
  alias Adyen.BalancePlatform.DKLocalAccountIdentification
  alias Adyen.BalancePlatform.HKLocalAccountIdentification
  alias Adyen.BalancePlatform.HULocalAccountIdentification
  alias Adyen.BalancePlatform.IbanAccountIdentification
  alias Adyen.BalancePlatform.NOLocalAccountIdentification
  alias Adyen.BalancePlatform.NumberAndBicAccountIdentification
  alias Adyen.BalancePlatform.NZLocalAccountIdentification
  alias Adyen.BalancePlatform.PLLocalAccountIdentification
  alias Adyen.BalancePlatform.SELocalAccountIdentification
  alias Adyen.BalancePlatform.SGLocalAccountIdentification
  alias Adyen.BalancePlatform.UKLocalAccountIdentification
  alias Adyen.BalancePlatform.USLocalAccountIdentification

  @type t :: %__MODULE__{
          accountIdentification:
            AULocalAccountIdentification.t()
            | BRLocalAccountIdentification.t()
            | CALocalAccountIdentification.t()
            | CZLocalAccountIdentification.t()
            | DKLocalAccountIdentification.t()
            | HKLocalAccountIdentification.t()
            | HULocalAccountIdentification.t()
            | IbanAccountIdentification.t()
            | NOLocalAccountIdentification.t()
            | NZLocalAccountIdentification.t()
            | NumberAndBicAccountIdentification.t()
            | PLLocalAccountIdentification.t()
            | SELocalAccountIdentification.t()
            | SGLocalAccountIdentification.t()
            | UKLocalAccountIdentification.t()
            | USLocalAccountIdentification.t()
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
           {AULocalAccountIdentification, :t},
           {BRLocalAccountIdentification, :t},
           {CALocalAccountIdentification, :t},
           {CZLocalAccountIdentification, :t},
           {DKLocalAccountIdentification, :t},
           {HKLocalAccountIdentification, :t},
           {HULocalAccountIdentification, :t},
           {IbanAccountIdentification, :t},
           {NOLocalAccountIdentification, :t},
           {NZLocalAccountIdentification, :t},
           {NumberAndBicAccountIdentification, :t},
           {PLLocalAccountIdentification, :t},
           {SELocalAccountIdentification, :t},
           {SGLocalAccountIdentification, :t},
           {UKLocalAccountIdentification, :t},
           {USLocalAccountIdentification, :t}
         ]}
    ]
  end
end
