defmodule Adyen.Management.V3.AlipayPlusInfo do
  @moduledoc """
  Provides struct and type for a AlipayPlusInfo
  """

  @type t :: %__MODULE__{settlementCurrencyCode: String.t() | nil}

  defstruct [:settlementCurrencyCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [settlementCurrencyCode: :string]
  end
end
