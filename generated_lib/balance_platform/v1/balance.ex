defmodule Adyen.BalancePlatform.V1.Balance do
  @moduledoc """
  Provides struct and type for a Balance
  """

  @type t :: %__MODULE__{
          available: integer,
          balance: integer,
          currency: String.t(),
          reserved: integer
        }

  defstruct [:available, :balance, :currency, :reserved]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      available: {:integer, "int64"},
      balance: {:integer, "int64"},
      currency: :string,
      reserved: {:integer, "int64"}
    ]
  end
end
