defmodule Adyen.Checkout.PaymentMethod do
  @moduledoc """
  Provides struct and type for a PaymentMethod
  """

  alias Adyen.Checkout.InputDetail
  alias Adyen.Checkout.PaymentMethodGroup
  alias Adyen.Checkout.PaymentMethodIssuer
  alias Adyen.Checkout.PaymentMethodUPIApps

  @type t :: %__MODULE__{
          apps: [PaymentMethodUPIApps.t()] | nil,
          brand: String.t() | nil,
          brands: [String.t()] | nil,
          configuration: map | nil,
          fundingSource: String.t() | nil,
          group: PaymentMethodGroup.t() | nil,
          inputDetails: [InputDetail.t()] | nil,
          issuers: [PaymentMethodIssuer.t()] | nil,
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
      apps: [{PaymentMethodUPIApps, :t}],
      brand: :string,
      brands: [:string],
      configuration: :map,
      fundingSource: {:enum, ["credit", "debit", "prepaid"]},
      group: {PaymentMethodGroup, :t},
      inputDetails: [{InputDetail, :t}],
      issuers: [{PaymentMethodIssuer, :t}],
      name: :string,
      promoted: :boolean,
      type: :string
    ]
  end
end
