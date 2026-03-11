defmodule Adyen.Payout.V64.FraudCheckResultWrapper do
  @moduledoc """
  Provides struct and type for a FraudCheckResultWrapper
  """

  @type t :: %__MODULE__{FraudCheckResult: Adyen.Payout.V64.FraudCheckResult.t() | nil}

  defstruct [:FraudCheckResult]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [FraudCheckResult: {Adyen.Payout.V64.FraudCheckResult, :t}]
  end
end
