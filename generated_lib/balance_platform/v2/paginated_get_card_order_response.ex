defmodule Adyen.BalancePlatform.V2.PaginatedGetCardOrderResponse do
  @moduledoc """
  Provides struct and type for a PaginatedGetCardOrderResponse
  """

  @type t :: %__MODULE__{
          cardOrders: [Adyen.BalancePlatform.V2.CardOrder.t()] | nil,
          hasNext: boolean,
          hasPrevious: boolean
        }

  defstruct [:cardOrders, :hasNext, :hasPrevious]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardOrders: [{Adyen.BalancePlatform.V2.CardOrder, :t}],
      hasNext: :boolean,
      hasPrevious: :boolean
    ]
  end
end
