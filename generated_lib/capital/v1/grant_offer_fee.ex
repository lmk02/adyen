defmodule Adyen.Capital.V1.GrantOfferFee do
  @moduledoc """
  Provides struct and type for a GrantOfferFee
  """

  @type t :: %__MODULE__{amount: Adyen.Capital.V1.Amount.t(), aprBasisPoints: integer | nil}

  defstruct [:amount, :aprBasisPoints]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: {Adyen.Capital.V1.Amount, :t}, aprBasisPoints: {:integer, "int32"}]
  end
end
