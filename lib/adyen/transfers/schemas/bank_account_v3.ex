defmodule Adyen.Transfers.BankAccountV3 do
  @moduledoc """
  Provides struct and type for a BankAccountV3
  """

  @type t :: %__MODULE__{
          accountHolder: Adyen.Transfers.PartyIdentification.t(),
          accountIdentification:
            Adyen.Transfers.AULocalAccountIdentification.t()
            | Adyen.Transfers.BRLocalAccountIdentification.t()
            | Adyen.Transfers.CALocalAccountIdentification.t()
            | Adyen.Transfers.CZLocalAccountIdentification.t()
            | Adyen.Transfers.DKLocalAccountIdentification.t()
            | Adyen.Transfers.HKLocalAccountIdentification.t()
            | Adyen.Transfers.HULocalAccountIdentification.t()
            | Adyen.Transfers.IbanAccountIdentification.t()
            | Adyen.Transfers.NOLocalAccountIdentification.t()
            | Adyen.Transfers.NZLocalAccountIdentification.t()
            | Adyen.Transfers.NumberAndBicAccountIdentification.t()
            | Adyen.Transfers.PLLocalAccountIdentification.t()
            | Adyen.Transfers.SELocalAccountIdentification.t()
            | Adyen.Transfers.SGLocalAccountIdentification.t()
            | Adyen.Transfers.UKLocalAccountIdentification.t()
            | Adyen.Transfers.USLocalAccountIdentification.t(),
          storedPaymentMethodId: String.t() | nil
        }

  defstruct [:accountHolder, :accountIdentification, :storedPaymentMethodId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {Adyen.Transfers.PartyIdentification, :t},
      accountIdentification:
        {:union,
         [
           {Adyen.Transfers.AULocalAccountIdentification, :t},
           {Adyen.Transfers.BRLocalAccountIdentification, :t},
           {Adyen.Transfers.CALocalAccountIdentification, :t},
           {Adyen.Transfers.CZLocalAccountIdentification, :t},
           {Adyen.Transfers.DKLocalAccountIdentification, :t},
           {Adyen.Transfers.HKLocalAccountIdentification, :t},
           {Adyen.Transfers.HULocalAccountIdentification, :t},
           {Adyen.Transfers.IbanAccountIdentification, :t},
           {Adyen.Transfers.NOLocalAccountIdentification, :t},
           {Adyen.Transfers.NZLocalAccountIdentification, :t},
           {Adyen.Transfers.NumberAndBicAccountIdentification, :t},
           {Adyen.Transfers.PLLocalAccountIdentification, :t},
           {Adyen.Transfers.SELocalAccountIdentification, :t},
           {Adyen.Transfers.SGLocalAccountIdentification, :t},
           {Adyen.Transfers.UKLocalAccountIdentification, :t},
           {Adyen.Transfers.USLocalAccountIdentification, :t}
         ]},
      storedPaymentMethodId: :string
    ]
  end
end
