defmodule Adyen.Capital.Repayment do
  @moduledoc """
  Provides struct and type for a Repayment
  """

  @type t :: %__MODULE__{
          basisPoints: integer,
          term: Adyen.Capital.RepaymentTerm.t() | nil,
          threshold: Adyen.Capital.ThresholdRepayment.t() | nil
        }

  defstruct [:basisPoints, :term, :threshold]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      basisPoints: {:integer, "int32"},
      term: {Adyen.Capital.RepaymentTerm, :t},
      threshold: {Adyen.Capital.ThresholdRepayment, :t}
    ]
  end
end
