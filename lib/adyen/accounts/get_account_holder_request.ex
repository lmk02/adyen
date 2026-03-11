defmodule Adyen.Accounts.GetAccountHolderRequest do
  @moduledoc """
  Provides struct and type for a GetAccountHolderRequest
  """

  @type t :: %__MODULE__{
          accountCode: String.t() | nil,
          accountHolderCode: String.t() | nil,
          showDetails: boolean | nil
        }

  defstruct [:accountCode, :accountHolderCode, :showDetails]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountCode: :string, accountHolderCode: :string, showDetails: :boolean]
  end
end
