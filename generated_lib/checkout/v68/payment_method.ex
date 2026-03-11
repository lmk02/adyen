defmodule Adyen.Checkout.V68.PaymentMethod do
  @moduledoc """
  Provides struct and type for a PaymentMethod
  """

  @type t :: %__MODULE__{
          apps: [Adyen.Checkout.V68.PaymentMethodUPIApps.t()] | nil,
          brand: String.t() | nil,
          brands: [String.t()] | nil,
          configuration: map | nil,
          fundingSource: String.t() | nil,
          group: Adyen.Checkout.V68.PaymentMethodGroup.t() | nil,
          inputDetails: [Adyen.Checkout.V68.InputDetail.t()] | nil,
          issuers: [Adyen.Checkout.V68.PaymentMethodIssuer.t()] | nil,
          name: String.t() | nil,
          promoted: boolean | nil,
          type: String.t() | nil
        }

  defstruct [
    :apps,
    :brand,
    :brands,
    :configuration,
    :fundingSource,
    :group,
    :inputDetails,
    :issuers,
    :name,
    :promoted,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      apps: [{Adyen.Checkout.V68.PaymentMethodUPIApps, :t}],
      brand: :string,
      brands: [:string],
      configuration: :map,
      fundingSource: {:enum, ["credit", "debit", "prepaid"]},
      group: {Adyen.Checkout.V68.PaymentMethodGroup, :t},
      inputDetails: [{Adyen.Checkout.V68.InputDetail, :t}],
      issuers: [{Adyen.Checkout.V68.PaymentMethodIssuer, :t}],
      name: :string,
      promoted: :boolean,
      type: :string
    ]
  end
end
