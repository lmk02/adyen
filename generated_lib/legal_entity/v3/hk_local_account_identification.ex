defmodule Adyen.LegalEntity.V3.HKLocalAccountIdentification do
  @moduledoc """
  Provides struct and type for a HKLocalAccountIdentification
  """

  @type t :: %__MODULE__{accountNumber: String.t(), clearingCode: String.t(), type: String.t()}

  defstruct [:accountNumber, :clearingCode, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountNumber: :string, clearingCode: :string, type: {:const, "hkLocal"}]
  end
end
