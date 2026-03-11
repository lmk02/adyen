defmodule Adyen.Checkout.V66.FraudCheckResult do
  @moduledoc """
  Provides struct and type for a FraudCheckResult
  """

  @type t :: %__MODULE__{accountScore: integer, checkId: integer, name: String.t()}

  defstruct [:accountScore, :checkId, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountScore: {:integer, "int32"}, checkId: {:integer, "int32"}, name: :string]
  end
end
