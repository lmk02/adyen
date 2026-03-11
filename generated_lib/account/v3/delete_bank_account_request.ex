defmodule Adyen.Account.V3.DeleteBankAccountRequest do
  @moduledoc """
  Provides struct and type for a DeleteBankAccountRequest
  """

  @type t :: %__MODULE__{accountHolderCode: String.t(), bankAccountUUIDs: [String.t()]}

  defstruct [:accountHolderCode, :bankAccountUUIDs]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountHolderCode: :string, bankAccountUUIDs: [:string]]
  end
end
