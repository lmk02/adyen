defmodule Adyen.Management.AdditionalCommission do
  @moduledoc """
  Provides struct and type for a AdditionalCommission
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          fixedAmount: integer | nil,
          variablePercentage: integer | nil
        }

  defstruct [:balanceAccountId, :fixedAmount, :variablePercentage]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountId: :string,
      fixedAmount: {:integer, "int64"},
      variablePercentage: {:integer, "int64"}
    ]
  end
end
