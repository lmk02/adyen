defmodule Adyen.Checkout.V51.RecurringDetail do
  @moduledoc """
  Provides struct and type for a RecurringDetail
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
          recurringDetailReference: String.t() | nil,
          storedDetails: Adyen.Checkout.V51.StoredDetails.t() | nil,
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
    :recurringDetailReference,
    :storedDetails,
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
      recurringDetailReference: :string,
      storedDetails: {Adyen.Checkout.V51.StoredDetails, :t},
      supportsRecurring: :boolean,
      type: :string
    ]
  end
end
