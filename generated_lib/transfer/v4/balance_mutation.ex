defmodule Adyen.Transfer.V4.BalanceMutation do
  @moduledoc """
  Provides struct and type for a BalanceMutation
  """

  @type t :: %__MODULE__{
          balance: integer | nil,
          currency: String.t() | nil,
          received: integer | nil,
          reserved: integer | nil
        }

  defstruct [:balance, :currency, :received, :reserved]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balance: {:integer, "int64"},
      currency: :string,
      received: {:integer, "int64"},
      reserved: {:integer, "int64"}
    ]
  end
end
