defmodule Adyen.Checkout.V66.Installments do
  @moduledoc """
  Provides struct and type for a Installments
  """

  @type t :: %__MODULE__{plan: String.t() | nil, value: integer}

  defstruct [:plan, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      plan:
        {:enum,
         [
           "bonus",
           "buynow_paylater",
           "interes_refund_prctg",
           "interest_bonus",
           "nointeres_refund_prctg",
           "nointerest_bonus",
           "refund_prctg",
           "regular",
           "revolving",
           "with_interest"
         ]},
      value: {:integer, "int32"}
    ]
  end
end
