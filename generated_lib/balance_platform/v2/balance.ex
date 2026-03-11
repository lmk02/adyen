defmodule Adyen.BalancePlatform.V2.Balance do
  @moduledoc """
  Provides struct and type for a Balance
  """

  @type t :: %__MODULE__{
          available: integer,
          balance: integer,
          currency: String.t(),
          pending: integer | nil,
          reserved: integer
        }

  defstruct [:available, :balance, :currency, :pending, :reserved]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      available: {:integer, "int64"},
      balance: {:integer, "int64"},
      currency: :string,
      pending: {:integer, "int64"},
      reserved: {:integer, "int64"}
    ]
  end
end
