defmodule Adyen.Account.V3.GetAccountHolderRequest do
  @moduledoc """
  Provides struct and type for a GetAccountHolderRequest
  """

  @type t :: %__MODULE__{accountCode: String.t() | nil, accountHolderCode: String.t() | nil}

  defstruct [:accountCode, :accountHolderCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountCode: :string, accountHolderCode: :string]
  end
end
