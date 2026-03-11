defmodule Adyen.Checkout.V71.FraudResult do
  @moduledoc """
  Provides struct and type for a FraudResult
  """

  @type t :: %__MODULE__{
          accountScore: integer,
          results: [Adyen.Checkout.V71.FraudCheckResult.t()] | nil
        }

  defstruct [:accountScore, :results]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountScore: {:integer, "int32"}, results: [{Adyen.Checkout.V71.FraudCheckResult, :t}]]
  end
end
