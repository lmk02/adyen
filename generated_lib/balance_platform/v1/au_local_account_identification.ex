defmodule Adyen.BalancePlatform.V1.AULocalAccountIdentification do
  @moduledoc """
  Provides struct and type for a AULocalAccountIdentification
  """

  @type t :: %__MODULE__{accountNumber: String.t(), bsbCode: String.t(), type: String.t()}

  defstruct [:accountNumber, :bsbCode, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountNumber: :string, bsbCode: :string, type: {:const, "auLocal"}]
  end
end
