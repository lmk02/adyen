defmodule Adyen.Checkout.V51.RiskData do
  @moduledoc """
  Provides struct and type for a RiskData
  """

  @type t :: %__MODULE__{clientData: String.t() | nil}

  defstruct [:clientData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [clientData: :string]
  end
end
