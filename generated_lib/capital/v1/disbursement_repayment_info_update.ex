defmodule Adyen.Capital.V1.DisbursementRepaymentInfoUpdate do
  @moduledoc """
  Provides struct and type for a DisbursementRepaymentInfoUpdate
  """

  @type t :: %__MODULE__{basisPoints: integer | nil, updateDescription: String.t() | nil}

  defstruct [:basisPoints, :updateDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [basisPoints: {:integer, "int32"}, updateDescription: :string]
  end
end
