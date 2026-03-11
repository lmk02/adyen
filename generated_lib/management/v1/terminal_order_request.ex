defmodule Adyen.Management.V1.TerminalOrderRequest do
  @moduledoc """
  Provides struct and type for a TerminalOrderRequest
  """

  @type t :: %__MODULE__{
          billingEntityId: String.t() | nil,
          customerOrderReference: String.t() | nil,
          items: [Adyen.Management.V1.OrderItem.t()] | nil,
          orderType: String.t() | nil,
          shippingLocationId: String.t() | nil,
          taxId: String.t() | nil
        }

  defstruct [
    :billingEntityId,
    :customerOrderReference,
    :items,
    :orderType,
    :shippingLocationId,
    :taxId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      billingEntityId: :string,
      customerOrderReference: :string,
      items: [{Adyen.Management.V1.OrderItem, :t}],
      orderType: :string,
      shippingLocationId: :string,
      taxId: :string
    ]
  end
end
