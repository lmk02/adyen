defmodule Adyen.TfmAPI.V1.GetStoresUnderAccountResponse do
  @moduledoc """
  Provides struct and type for a GetStoresUnderAccountResponse
  """

  @type t :: %__MODULE__{stores: [Adyen.TfmAPI.V1.Store.t()] | nil}

  defstruct [:stores]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [stores: [{Adyen.TfmAPI.V1.Store, :t}]]
  end
end
