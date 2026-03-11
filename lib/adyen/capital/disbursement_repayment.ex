defmodule Adyen.Capital.DisbursementRepayment do
  @moduledoc """
  Provides struct and type for a DisbursementRepayment
  """

  @type t :: %__MODULE__{basisPoints: integer, updateDescription: String.t()}

  defstruct [:basisPoints, :updateDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [basisPoints: {:integer, "int32"}, updateDescription: :string]
  end
end
