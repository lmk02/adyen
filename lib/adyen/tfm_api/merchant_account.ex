defmodule Adyen.TfmAPI.MerchantAccount do
  @moduledoc """
  Provides struct and type for a MerchantAccount
  """

  @type t :: %__MODULE__{
          inStoreTerminals: [String.t()] | nil,
          inventoryTerminals: [String.t()] | nil,
          merchantAccount: String.t(),
          stores: [Adyen.TfmAPI.Store.t()] | nil
        }

  defstruct [:inStoreTerminals, :inventoryTerminals, :merchantAccount, :stores]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      inStoreTerminals: [:string],
      inventoryTerminals: [:string],
      merchantAccount: :string,
      stores: [{Adyen.TfmAPI.Store, :t}]
    ]
  end
end
