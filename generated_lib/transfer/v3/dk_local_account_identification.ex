defmodule Adyen.Transfer.V3.DKLocalAccountIdentification do
  @moduledoc """
  Provides struct and type for a DKLocalAccountIdentification
  """

  @type t :: %__MODULE__{accountNumber: String.t(), bankCode: String.t(), type: String.t()}

  defstruct [:accountNumber, :bankCode, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountNumber: :string, bankCode: :string, type: {:const, "dkLocal"}]
  end
end
