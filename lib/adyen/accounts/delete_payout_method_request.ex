defmodule Adyen.Accounts.DeletePayoutMethodRequest do
  @moduledoc """
  Provides struct and type for a DeletePayoutMethodRequest
  """

  @type t :: %__MODULE__{accountHolderCode: String.t(), payoutMethodCodes: [String.t()]}

  defstruct [:accountHolderCode, :payoutMethodCodes]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountHolderCode: :string, payoutMethodCodes: [:string]]
  end
end
