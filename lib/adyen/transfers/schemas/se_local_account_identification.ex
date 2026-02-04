defmodule Adyen.Transfers.SELocalAccountIdentification do
  @moduledoc """
  Provides struct and type for a SELocalAccountIdentification
  """

  @type t :: %__MODULE__{accountNumber: String.t(), clearingNumber: String.t(), type: String.t()}

  defstruct [:accountNumber, :clearingNumber, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountNumber: :string, clearingNumber: :string, type: {:const, "seLocal"}]
  end
end
