defmodule Adyen.Capital.V1.CreateGrantOfferRequest do
  @moduledoc """
  Provides struct and type for a CreateGrantOfferRequest
  """

  @type t :: %__MODULE__{amount: Adyen.Capital.V1.Amount.t()}

  defstruct [:amount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: {Adyen.Capital.V1.Amount, :t}]
  end
end
