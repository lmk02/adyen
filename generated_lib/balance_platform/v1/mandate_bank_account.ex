defmodule Adyen.BalancePlatform.V1.MandateBankAccount do
  @moduledoc """
  Provides struct and type for a MandateBankAccount
  """

  @type t :: %__MODULE__{
          accountHolder: Adyen.BalancePlatform.V1.MandatePartyIdentification.t(),
          accountIdentification: Adyen.BalancePlatform.V1.MandateAccountIdentification.t()
        }

  defstruct [:accountHolder, :accountIdentification]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {Adyen.BalancePlatform.V1.MandatePartyIdentification, :t},
      accountIdentification: {Adyen.BalancePlatform.V1.MandateAccountIdentification, :t}
    ]
  end
end
