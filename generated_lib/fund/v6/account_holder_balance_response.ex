defmodule Adyen.Fund.V6.AccountHolderBalanceResponse do
  @moduledoc """
  Provides struct and type for a AccountHolderBalanceResponse
  """

  @type t :: %__MODULE__{
          balancePerAccount: [Adyen.Fund.V6.AccountDetailBalance.t()] | nil,
          invalidFields: [Adyen.Fund.V6.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          totalBalance: Adyen.Fund.V6.DetailBalance.t() | nil
        }

  defstruct [:balancePerAccount, :invalidFields, :pspReference, :resultCode, :totalBalance]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balancePerAccount: [{Adyen.Fund.V6.AccountDetailBalance, :t}],
      invalidFields: [{Adyen.Fund.V6.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string,
      totalBalance: {Adyen.Fund.V6.DetailBalance, :t}
    ]
  end
end
