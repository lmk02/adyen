defmodule Adyen.Transfer.V3.BankAccountV3 do
  @moduledoc """
  Provides struct and type for a BankAccountV3
  """

  @type t :: %__MODULE__{
          accountHolder: Adyen.Transfer.V3.PartyIdentification.t(),
          accountIdentification:
            Adyen.Transfer.V3.AULocalAccountIdentification.t()
            | Adyen.Transfer.V3.BRLocalAccountIdentification.t()
            | Adyen.Transfer.V3.CALocalAccountIdentification.t()
            | Adyen.Transfer.V3.CZLocalAccountIdentification.t()
            | Adyen.Transfer.V3.DKLocalAccountIdentification.t()
            | Adyen.Transfer.V3.HKLocalAccountIdentification.t()
            | Adyen.Transfer.V3.HULocalAccountIdentification.t()
            | Adyen.Transfer.V3.IbanAccountIdentification.t()
            | Adyen.Transfer.V3.NOLocalAccountIdentification.t()
            | Adyen.Transfer.V3.NZLocalAccountIdentification.t()
            | Adyen.Transfer.V3.NumberAndBicAccountIdentification.t()
            | Adyen.Transfer.V3.PLLocalAccountIdentification.t()
            | Adyen.Transfer.V3.SELocalAccountIdentification.t()
            | Adyen.Transfer.V3.SGLocalAccountIdentification.t()
            | Adyen.Transfer.V3.UKLocalAccountIdentification.t()
            | Adyen.Transfer.V3.USLocalAccountIdentification.t(),
          storedPaymentMethodId: String.t() | nil
        }

  defstruct [:accountHolder, :accountIdentification, :storedPaymentMethodId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {Adyen.Transfer.V3.PartyIdentification, :t},
      accountIdentification:
        {:union,
         [
           {Adyen.Transfer.V3.AULocalAccountIdentification, :t},
           {Adyen.Transfer.V3.BRLocalAccountIdentification, :t},
           {Adyen.Transfer.V3.CALocalAccountIdentification, :t},
           {Adyen.Transfer.V3.CZLocalAccountIdentification, :t},
           {Adyen.Transfer.V3.DKLocalAccountIdentification, :t},
           {Adyen.Transfer.V3.HKLocalAccountIdentification, :t},
           {Adyen.Transfer.V3.HULocalAccountIdentification, :t},
           {Adyen.Transfer.V3.IbanAccountIdentification, :t},
           {Adyen.Transfer.V3.NOLocalAccountIdentification, :t},
           {Adyen.Transfer.V3.NZLocalAccountIdentification, :t},
           {Adyen.Transfer.V3.NumberAndBicAccountIdentification, :t},
           {Adyen.Transfer.V3.PLLocalAccountIdentification, :t},
           {Adyen.Transfer.V3.SELocalAccountIdentification, :t},
           {Adyen.Transfer.V3.SGLocalAccountIdentification, :t},
           {Adyen.Transfer.V3.UKLocalAccountIdentification, :t},
           {Adyen.Transfer.V3.USLocalAccountIdentification, :t}
         ]},
      storedPaymentMethodId: :string
    ]
  end
end
