defmodule Adyen.Checkout.V66.PaymentMethod do
  @moduledoc """
  Provides struct and type for a PaymentMethod
  """

  @type t :: %__MODULE__{
          apps: [Adyen.Checkout.V66.PaymentMethodUPIApps.t()] | nil,
          brand: String.t() | nil,
          brands: [String.t()] | nil,
          configuration: map | nil,
          details: [Adyen.Checkout.V66.InputDetail.t()] | nil,
          fundingSource: String.t() | nil,
          group: Adyen.Checkout.V66.PaymentMethodGroup.t() | nil,
          inputDetails: [Adyen.Checkout.V66.InputDetail.t()] | nil,
          name: String.t() | nil,
          promoted: boolean | nil,
          type: String.t() | nil
        }

  defstruct [
    :apps,
    :brand,
    :brands,
    :configuration,
    :details,
    :fundingSource,
    :group,
    :inputDetails,
    :name,
    :promoted,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      apps: [{Adyen.Checkout.V66.PaymentMethodUPIApps, :t}],
      brand: :string,
      brands: [:string],
      configuration: :map,
      details: [{Adyen.Checkout.V66.InputDetail, :t}],
      fundingSource: {:enum, ["credit", "debit", "prepaid"]},
      group: {Adyen.Checkout.V66.PaymentMethodGroup, :t},
      inputDetails: [{Adyen.Checkout.V66.InputDetail, :t}],
      name: :string,
      promoted: :boolean,
      type: :string
    ]
  end
end
