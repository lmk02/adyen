defmodule Adyen.Capital.V1.DisbursementInfoUpdate do
  @moduledoc """
  Provides struct and type for a DisbursementInfoUpdate
  """

  @type t :: %__MODULE__{repayment: Adyen.Capital.V1.DisbursementRepaymentInfoUpdate.t() | nil}

  defstruct [:repayment]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [repayment: {Adyen.Capital.V1.DisbursementRepaymentInfoUpdate, :t}]
  end
end
