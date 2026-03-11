defmodule Adyen.Management.V1.TerminalOrder do
  @moduledoc """
  Provides struct and type for a TerminalOrder
  """

  @type t :: %__MODULE__{
          billingEntity: Adyen.Management.V1.BillingEntity.t() | nil,
          customerOrderReference: String.t() | nil,
          id: String.t() | nil,
          items: [Adyen.Management.V1.OrderItem.t()] | nil,
          orderDate: String.t() | nil,
          shippingLocation: Adyen.Management.V1.ShippingLocation.t() | nil,
          status: String.t() | nil,
          trackingUrl: String.t() | nil
        }

  defstruct [
    :billingEntity,
    :customerOrderReference,
    :id,
    :items,
    :orderDate,
    :shippingLocation,
    :status,
    :trackingUrl
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      billingEntity: {Adyen.Management.V1.BillingEntity, :t},
      customerOrderReference: :string,
      id: :string,
      items: [{Adyen.Management.V1.OrderItem, :t}],
      orderDate: :string,
      shippingLocation: {Adyen.Management.V1.ShippingLocation, :t},
      status: :string,
      trackingUrl: :string
    ]
  end
end
