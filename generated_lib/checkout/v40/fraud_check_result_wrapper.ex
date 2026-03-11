defmodule Adyen.Checkout.V40.FraudCheckResultWrapper do
  @moduledoc """
  Provides struct and type for a FraudCheckResultWrapper
  """

  @type t :: %__MODULE__{FraudCheckResult: Adyen.Checkout.V40.FraudCheckResult.t() | nil}

  defstruct [:FraudCheckResult]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [FraudCheckResult: {Adyen.Checkout.V40.FraudCheckResult, :t}]
  end
end
