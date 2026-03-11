defmodule Adyen.Fund.V3.AccountHolderTransactionListResponse do
  @moduledoc """
  Provides struct and type for a AccountHolderTransactionListResponse
  """

  @type t :: %__MODULE__{
          accountTransactionLists: [Adyen.Fund.V3.AccountTransactionListWrapper.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [:accountTransactionLists, :pspReference, :resultCode, :submittedAsync]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountTransactionLists: [{Adyen.Fund.V3.AccountTransactionListWrapper, :t}],
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean
    ]
  end
end
