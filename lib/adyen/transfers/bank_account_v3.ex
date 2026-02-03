defmodule Adyen.Transfers.BankAccountV3 do
  @moduledoc """
  Provides struct and type for a BankAccountV3
  """

  alias Adyen.Transfers.AULocalAccountIdentification
  alias Adyen.Transfers.BRLocalAccountIdentification
  alias Adyen.Transfers.CALocalAccountIdentification
  alias Adyen.Transfers.CZLocalAccountIdentification
  alias Adyen.Transfers.DKLocalAccountIdentification
  alias Adyen.Transfers.HKLocalAccountIdentification
  alias Adyen.Transfers.HULocalAccountIdentification
  alias Adyen.Transfers.IbanAccountIdentification
  alias Adyen.Transfers.NOLocalAccountIdentification
  alias Adyen.Transfers.NumberAndBicAccountIdentification
  alias Adyen.Transfers.NZLocalAccountIdentification
  alias Adyen.Transfers.PartyIdentification
  alias Adyen.Transfers.PLLocalAccountIdentification
  alias Adyen.Transfers.SELocalAccountIdentification
  alias Adyen.Transfers.SGLocalAccountIdentification
  alias Adyen.Transfers.UKLocalAccountIdentification
  alias Adyen.Transfers.USLocalAccountIdentification

  @type t :: %__MODULE__{
          accountHolder: PartyIdentification.t(),
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
            | USLocalAccountIdentification.t(),
          storedPaymentMethodId: String.t() | nil
        }

  defstruct [:accountHolder, :accountIdentification, :storedPaymentMethodId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {PartyIdentification, :t},
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
         ]},
      storedPaymentMethodId: :string
    ]
  end
end
