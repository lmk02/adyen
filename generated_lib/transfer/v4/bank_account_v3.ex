defmodule Adyen.Transfer.V4.BankAccountV3 do
  @moduledoc """
  Provides struct and type for a BankAccountV3
  """

  @type t :: %__MODULE__{
          accountHolder: Adyen.Transfer.V4.PartyIdentification.t(),
          accountIdentification:
            Adyen.Transfer.V4.AULocalAccountIdentification.t()
            | Adyen.Transfer.V4.BRLocalAccountIdentification.t()
            | Adyen.Transfer.V4.CALocalAccountIdentification.t()
            | Adyen.Transfer.V4.CZLocalAccountIdentification.t()
            | Adyen.Transfer.V4.DKLocalAccountIdentification.t()
            | Adyen.Transfer.V4.HKLocalAccountIdentification.t()
            | Adyen.Transfer.V4.HULocalAccountIdentification.t()
            | Adyen.Transfer.V4.IbanAccountIdentification.t()
            | Adyen.Transfer.V4.NOLocalAccountIdentification.t()
            | Adyen.Transfer.V4.NZLocalAccountIdentification.t()
            | Adyen.Transfer.V4.NumberAndBicAccountIdentification.t()
            | Adyen.Transfer.V4.PLLocalAccountIdentification.t()
            | Adyen.Transfer.V4.SELocalAccountIdentification.t()
            | Adyen.Transfer.V4.SGLocalAccountIdentification.t()
            | Adyen.Transfer.V4.UKLocalAccountIdentification.t()
            | Adyen.Transfer.V4.USLocalAccountIdentification.t(),
          storedPaymentMethodId: String.t() | nil
        }

  defstruct [:accountHolder, :accountIdentification, :storedPaymentMethodId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {Adyen.Transfer.V4.PartyIdentification, :t},
      accountIdentification:
        {:union,
         [
           {Adyen.Transfer.V4.AULocalAccountIdentification, :t},
           {Adyen.Transfer.V4.BRLocalAccountIdentification, :t},
           {Adyen.Transfer.V4.CALocalAccountIdentification, :t},
           {Adyen.Transfer.V4.CZLocalAccountIdentification, :t},
           {Adyen.Transfer.V4.DKLocalAccountIdentification, :t},
           {Adyen.Transfer.V4.HKLocalAccountIdentification, :t},
           {Adyen.Transfer.V4.HULocalAccountIdentification, :t},
           {Adyen.Transfer.V4.IbanAccountIdentification, :t},
           {Adyen.Transfer.V4.NOLocalAccountIdentification, :t},
           {Adyen.Transfer.V4.NZLocalAccountIdentification, :t},
           {Adyen.Transfer.V4.NumberAndBicAccountIdentification, :t},
           {Adyen.Transfer.V4.PLLocalAccountIdentification, :t},
           {Adyen.Transfer.V4.SELocalAccountIdentification, :t},
           {Adyen.Transfer.V4.SGLocalAccountIdentification, :t},
           {Adyen.Transfer.V4.UKLocalAccountIdentification, :t},
           {Adyen.Transfer.V4.USLocalAccountIdentification, :t}
         ]},
      storedPaymentMethodId: :string
    ]
  end
end
