defmodule Adyen.TfmAPI.Store do
  @moduledoc """
  Provides struct and type for a Store
  """

  @type t :: %__MODULE__{
          address: Adyen.TfmAPI.Address.t() | nil,
          description: String.t() | nil,
          inStoreTerminals: [String.t()] | nil,
          merchantAccountCode: String.t() | nil,
          status: String.t() | nil,
          store: String.t()
        }

  defstruct [:address, :description, :inStoreTerminals, :merchantAccountCode, :status, :store]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.TfmAPI.Address, :t},
      description: :string,
      inStoreTerminals: [:string],
      merchantAccountCode: :string,
      status: :string,
      store: :string
    ]
  end
end
