defmodule Adyen.Transfers.Repayment do
  @moduledoc """
  Provides struct and type for a Repayment
  """

  alias Adyen.Transfers.RepaymentTerm
  alias Adyen.Transfers.ThresholdRepayment

  @type t :: %__MODULE__{
          basisPoints: integer,
          term: RepaymentTerm.t() | nil,
          threshold: ThresholdRepayment.t() | nil
        }

  defstruct [:basisPoints, :term, :threshold]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      basisPoints: {:integer, "int32"},
      term: {RepaymentTerm, :t},
      threshold: {ThresholdRepayment, :t}
    ]
  end
end
