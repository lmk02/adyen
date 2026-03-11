defmodule Adyen.Fund.V6.AccountHolderTransactionListResponse do
  @moduledoc """
  Provides struct and type for a AccountHolderTransactionListResponse
  """

  @type t :: %__MODULE__{
          accountTransactionLists: [Adyen.Fund.V6.AccountTransactionList.t()] | nil,
          invalidFields: [Adyen.Fund.V6.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:accountTransactionLists, :invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountTransactionLists: [{Adyen.Fund.V6.AccountTransactionList, :t}],
      invalidFields: [{Adyen.Fund.V6.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
