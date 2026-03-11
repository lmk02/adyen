defmodule Adyen.Account.V5.CloseStoresRequest do
  @moduledoc """
  Provides struct and type for a CloseStoresRequest
  """

  @type t :: %__MODULE__{accountHolderCode: String.t(), stores: [String.t()]}

  defstruct [:accountHolderCode, :stores]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountHolderCode: :string, stores: [:string]]
  end
end
