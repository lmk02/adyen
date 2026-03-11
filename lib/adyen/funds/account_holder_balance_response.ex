defmodule Adyen.Funds.AccountHolderBalanceResponse do
  @moduledoc """
  Provides struct and type for a AccountHolderBalanceResponse
  """

  @type t :: %__MODULE__{
          balancePerAccount: [Adyen.Funds.AccountDetailBalance.t()] | nil,
          invalidFields: [Adyen.Funds.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          totalBalance: Adyen.Funds.DetailBalance.t() | nil
        }

  defstruct [:balancePerAccount, :invalidFields, :pspReference, :resultCode, :totalBalance]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balancePerAccount: [{Adyen.Funds.AccountDetailBalance, :t}],
      invalidFields: [{Adyen.Funds.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string,
      totalBalance: {Adyen.Funds.DetailBalance, :t}
    ]
  end
end
