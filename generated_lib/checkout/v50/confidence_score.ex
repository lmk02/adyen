defmodule Adyen.Checkout.V50.ConfidenceScore do
  @moduledoc """
  Provides struct and type for a ConfidenceScore
  """

  @type t :: %__MODULE__{errors: [String.t()] | nil, score: number | nil}

  defstruct [:errors, :score]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [errors: [:string], score: {:number, "double"}]
  end
end
