defmodule Adyen.Account.V6.CloseAccountRequest do
  @moduledoc """
  Provides struct and type for a CloseAccountRequest
  """

  @type t :: %__MODULE__{accountCode: String.t()}

  defstruct [:accountCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountCode: :string]
  end
end
