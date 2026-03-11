defmodule Adyen.Checkout.V66.FraudResult do
  @moduledoc """
  Provides struct and type for a FraudResult
  """

  @type t :: %__MODULE__{
          accountScore: integer,
          results: [Adyen.Checkout.V66.FraudCheckResultWrapper.t()] | nil
        }

  defstruct [:accountScore, :results]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountScore: {:integer, "int32"},
      results: [{Adyen.Checkout.V66.FraudCheckResultWrapper, :t}]
    ]
  end
end
