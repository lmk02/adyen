defmodule Adyen.Account.V6.MigratedStores do
  @moduledoc """
  Provides struct and type for a MigratedStores
  """

  @type t :: %__MODULE__{
          businessLineId: String.t() | nil,
          storeCode: String.t() | nil,
          storeId: String.t() | nil,
          storeReference: String.t() | nil
        }

  defstruct [:businessLineId, :storeCode, :storeId, :storeReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [businessLineId: :string, storeCode: :string, storeId: :string, storeReference: :string]
  end
end
