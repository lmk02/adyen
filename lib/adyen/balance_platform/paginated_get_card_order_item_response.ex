defmodule Adyen.BalancePlatform.PaginatedGetCardOrderItemResponse do
  @moduledoc """
  Provides struct and type for a PaginatedGetCardOrderItemResponse
  """

  alias Adyen.BalancePlatform.CardOrderItem

  @type t :: %__MODULE__{
          data: [CardOrderItem.t()],
          hasNext: boolean,
          hasPrevious: boolean
        }

  defstruct [:data, :hasNext, :hasPrevious]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{CardOrderItem, :t}], hasNext: :boolean, hasPrevious: :boolean]
  end
end
