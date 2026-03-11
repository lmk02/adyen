defmodule Adyen.Capital.FundsCollection do
  @moduledoc """
  Provides struct and type for a FundsCollection
  """

  @type t :: %__MODULE__{
          accountIdentification: Adyen.Capital.BankAccountIdentification.t() | nil,
          fundsCollectionType: String.t() | nil
        }

  defstruct [:accountIdentification, :fundsCollectionType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountIdentification: {Adyen.Capital.BankAccountIdentification, :t},
      fundsCollectionType: {:enum, ["UnscheduledRepayment", "Revocation"]}
    ]
  end
end
