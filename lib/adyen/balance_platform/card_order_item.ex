defmodule Adyen.BalancePlatform.CardOrderItem do
  @moduledoc """
  Provides struct and type for a CardOrderItem
  """

  alias Adyen.BalancePlatform.CardOrderItemDeliveryStatus

  @type t :: %__MODULE__{
          balancePlatform: String.t() | nil,
          card: CardOrderItemDeliveryStatus.t() | nil,
          cardOrderItemId: String.t() | nil,
          creationDate: DateTime.t() | nil,
          id: String.t() | nil,
          paymentInstrumentId: String.t() | nil,
          pin: CardOrderItemDeliveryStatus.t() | nil,
          shippingMethod: String.t() | nil
        }

  defstruct [
    :balancePlatform,
    :card,
    :cardOrderItemId,
    :creationDate,
    :id,
    :paymentInstrumentId,
    :pin,
    :shippingMethod
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balancePlatform: :string,
      card: {CardOrderItemDeliveryStatus, :t},
      cardOrderItemId: :string,
      creationDate: {:string, "date-time"},
      id: :string,
      paymentInstrumentId: :string,
      pin: {CardOrderItemDeliveryStatus, :t},
      shippingMethod: :string
    ]
  end
end
