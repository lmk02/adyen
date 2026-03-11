defmodule Adyen.Account.V6.DeleteShareholderRequest do
  @moduledoc """
  Provides struct and type for a DeleteShareholderRequest
  """

  @type t :: %__MODULE__{accountHolderCode: String.t(), shareholderCodes: [String.t()]}

  defstruct [:accountHolderCode, :shareholderCodes]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountHolderCode: :string, shareholderCodes: [:string]]
  end
end
