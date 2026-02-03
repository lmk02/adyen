defmodule Adyen.Checkout.FraudResult do
  @moduledoc """
  Provides struct and type for a FraudResult
  """

  alias Adyen.Checkout.FraudCheckResult

  @type t :: %__MODULE__{
          accountScore: integer,
          results: [FraudCheckResult.t()] | nil
        }

  defstruct [:accountScore, :results]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountScore: {:integer, "int32"}, results: [{FraudCheckResult, :t}]]
  end
end
