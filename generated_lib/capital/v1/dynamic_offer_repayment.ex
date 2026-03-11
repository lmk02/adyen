defmodule Adyen.Capital.V1.DynamicOfferRepayment do
  @moduledoc """
  Provides struct and type for a DynamicOfferRepayment
  """

  @type t :: %__MODULE__{term: Adyen.Capital.V1.RepaymentTerm.t()}

  defstruct [:term]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [term: {Adyen.Capital.V1.RepaymentTerm, :t}]
  end
end
