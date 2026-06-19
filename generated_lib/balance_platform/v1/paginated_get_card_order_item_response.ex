defmodule Adyen.BalancePlatform.V1.PaginatedGetCardOrderItemResponse do
  @moduledoc """
  Provides struct and type for a PaginatedGetCardOrderItemResponse
  """

  @type t :: %__MODULE__{
          data: [Adyen.BalancePlatform.V1.CardOrderItem.t()],
          hasNext: boolean,
          hasPrevious: boolean
        }

  defstruct [:data, :hasNext, :hasPrevious]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: [{Adyen.BalancePlatform.V1.CardOrderItem, :t}],
      hasNext: :boolean,
      hasPrevious: :boolean
    ]
  end
end
