defmodule Adyen.Capital.DisbursementInfoUpdate do
  @moduledoc """
  Provides struct and type for a DisbursementInfoUpdate
  """

  @type t :: %__MODULE__{repayment: Adyen.Capital.DisbursementRepaymentInfoUpdate.t() | nil}

  defstruct [:repayment]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [repayment: {Adyen.Capital.DisbursementRepaymentInfoUpdate, :t}]
  end
end
