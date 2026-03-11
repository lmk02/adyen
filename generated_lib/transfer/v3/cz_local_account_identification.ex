defmodule Adyen.Transfer.V3.CZLocalAccountIdentification do
  @moduledoc """
  Provides struct and type for a CZLocalAccountIdentification
  """

  @type t :: %__MODULE__{accountNumber: String.t(), bankCode: String.t(), type: String.t()}

  defstruct [:accountNumber, :bankCode, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountNumber: :string, bankCode: :string, type: {:const, "czLocal"}]
  end
end
