defmodule Adyen.TfmAPI.GetStoresUnderAccountResponse do
  @moduledoc """
  Provides struct and type for a GetStoresUnderAccountResponse
  """

  @type t :: %__MODULE__{stores: [Adyen.TfmAPI.Store.t()] | nil}

  defstruct [:stores]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [stores: [{Adyen.TfmAPI.Store, :t}]]
  end
end
