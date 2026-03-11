defmodule Adyen.BalancePlatform.V2.TaxFormSummaryResponse do
  @moduledoc """
  Provides struct and type for a TaxFormSummaryResponse
  """

  @type t :: %__MODULE__{data: [Adyen.BalancePlatform.V2.Summary.t()]}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{Adyen.BalancePlatform.V2.Summary, :t}]]
  end
end
