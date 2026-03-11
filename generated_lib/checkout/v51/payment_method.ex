defmodule Adyen.Checkout.V51.PaymentMethod do
  @moduledoc """
  Provides struct and type for a PaymentMethod
  """

  @type t :: %__MODULE__{
          apps: [Adyen.Checkout.V51.PaymentMethodUPIApps.t()] | nil,
          brands: [String.t()] | nil,
          configuration: map | nil,
          details: [Adyen.Checkout.V51.InputDetail.t()] | nil,
          group: Adyen.Checkout.V51.PaymentMethodGroup.t() | nil,
          inputDetails: [Adyen.Checkout.V51.InputDetail.t()] | nil,
          name: String.t() | nil,
          promoted: boolean | nil,
          supportsRecurring: boolean | nil,
          type: String.t() | nil
        }

  defstruct [
    :apps,
    :brands,
    :configuration,
    :details,
    :group,
    :inputDetails,
    :name,
    :promoted,
    :supportsRecurring,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      apps: [{Adyen.Checkout.V51.PaymentMethodUPIApps, :t}],
      brands: [:string],
      configuration: :map,
      details: [{Adyen.Checkout.V51.InputDetail, :t}],
      group: {Adyen.Checkout.V51.PaymentMethodGroup, :t},
      inputDetails: [{Adyen.Checkout.V51.InputDetail, :t}],
      name: :string,
      promoted: :boolean,
      supportsRecurring: :boolean,
      type: :string
    ]
  end
end
