defmodule Adyen.Checkout.V49.PaymentMethod do
  @moduledoc """
  Provides struct and type for a PaymentMethod
  """

  @type t :: %__MODULE__{
          apps: [Adyen.Checkout.V49.PaymentMethodUPIApps.t()] | nil,
          brands: [String.t()] | nil,
          configuration: map | nil,
          details: [Adyen.Checkout.V49.InputDetail.t()] | nil,
          group: Adyen.Checkout.V49.PaymentMethodGroup.t() | nil,
          inputDetails: [Adyen.Checkout.V49.InputDetail.t()] | nil,
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
      apps: [{Adyen.Checkout.V49.PaymentMethodUPIApps, :t}],
      brands: [:string],
      configuration: :map,
      details: [{Adyen.Checkout.V49.InputDetail, :t}],
      group: {Adyen.Checkout.V49.PaymentMethodGroup, :t},
      inputDetails: [{Adyen.Checkout.V49.InputDetail, :t}],
      name: :string,
      promoted: :boolean,
      supportsRecurring: :boolean,
      type: :string
    ]
  end
end
