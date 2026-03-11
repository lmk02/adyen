defmodule Adyen.Checkout.FraudResult do
  @moduledoc """
  Provides struct and type for a FraudResult
  """

  @type t :: %__MODULE__{
          accountScore: integer,
          results: [Adyen.Checkout.FraudCheckResult.t()] | nil
        }

  defstruct [:accountScore, :results]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountScore: {:integer, "int32"}, results: [{Adyen.Checkout.FraudCheckResult, :t}]]
  end
end
