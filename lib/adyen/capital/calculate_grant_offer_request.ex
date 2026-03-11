defmodule Adyen.Capital.CalculateGrantOfferRequest do
  @moduledoc """
  Provides struct and type for a CalculateGrantOfferRequest
  """

  @type t :: %__MODULE__{amount: Adyen.Capital.Amount.t()}

  defstruct [:amount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: {Adyen.Capital.Amount, :t}]
  end
end
