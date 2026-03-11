defmodule Adyen.Account.V5.CloseAccountHolderRequest do
  @moduledoc """
  Provides struct and type for a CloseAccountHolderRequest
  """

  @type t :: %__MODULE__{accountHolderCode: String.t()}

  defstruct [:accountHolderCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountHolderCode: :string]
  end
end
