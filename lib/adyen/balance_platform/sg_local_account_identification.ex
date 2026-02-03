defmodule Adyen.BalancePlatform.SGLocalAccountIdentification do
  @moduledoc """
  Provides struct and type for a SGLocalAccountIdentification
  """

  @type t :: %__MODULE__{accountNumber: String.t(), bic: String.t(), type: String.t() | nil}

  defstruct [:accountNumber, :bic, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountNumber: :string, bic: :string, type: {:const, "sgLocal"}]
  end
end
