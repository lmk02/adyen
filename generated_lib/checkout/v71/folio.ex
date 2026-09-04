defmodule Adyen.Checkout.V71.Folio do
  @moduledoc """
  Provides struct and type for a Folio
  """

  @type t :: %__MODULE__{cashAdvances: integer | nil, number: String.t() | nil}

  defstruct [:cashAdvances, :number]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [cashAdvances: {:integer, "int64"}, number: :string]
  end
end
