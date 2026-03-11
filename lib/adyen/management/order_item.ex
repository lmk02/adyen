defmodule Adyen.Management.OrderItem do
  @moduledoc """
  Provides struct and type for a OrderItem
  """

  @type t :: %__MODULE__{
          id: String.t() | nil,
          installments: integer | nil,
          name: String.t() | nil,
          quantity: integer | nil
        }

  defstruct [:id, :installments, :name, :quantity]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :string, installments: {:integer, "int64"}, name: :string, quantity: {:integer, "int32"}]
  end
end
