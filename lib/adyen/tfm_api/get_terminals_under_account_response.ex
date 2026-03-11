defmodule Adyen.TfmAPI.GetTerminalsUnderAccountResponse do
  @moduledoc """
  Provides struct and type for a GetTerminalsUnderAccountResponse
  """

  @type t :: %__MODULE__{
          companyAccount: String.t(),
          inventoryTerminals: [String.t()] | nil,
          merchantAccounts: [Adyen.TfmAPI.MerchantAccount.t()] | nil
        }

  defstruct [:companyAccount, :inventoryTerminals, :merchantAccounts]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      companyAccount: :string,
      inventoryTerminals: [:string],
      merchantAccounts: [{Adyen.TfmAPI.MerchantAccount, :t}]
    ]
  end
end
