defmodule Adyen.BalancePlatform.Repayment do
  @moduledoc """
  Provides struct and type for a Repayment
  """

  @type t :: %__MODULE__{
          basisPoints: integer,
          term: Adyen.BalancePlatform.RepaymentTerm.t() | nil,
          threshold: Adyen.BalancePlatform.ThresholdRepayment.t() | nil
        }

  defstruct [:basisPoints, :term, :threshold]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      basisPoints: {:integer, "int32"},
      term: {Adyen.BalancePlatform.RepaymentTerm, :t},
      threshold: {Adyen.BalancePlatform.ThresholdRepayment, :t}
    ]
  end
end
