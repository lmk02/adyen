defmodule Adyen.Management.V1.Merchant do
  @moduledoc """
  Provides struct and type for a Merchant
  """

  @type t :: %__MODULE__{
          _links: Adyen.Management.V1.MerchantLinks.t() | nil,
          captureDelay: String.t() | nil,
          companyId: String.t() | nil,
          dataCenters: [Adyen.Management.V1.DataCenter.t()] | nil,
          defaultShopperInteraction: String.t() | nil,
          description: String.t() | nil,
          id: String.t() | nil,
          merchantCity: String.t() | nil,
          name: String.t() | nil,
          pricingPlan: String.t() | nil,
          primarySettlementCurrency: String.t() | nil,
          reference: String.t() | nil,
          shopWebAddress: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [
    :_links,
    :captureDelay,
    :companyId,
    :dataCenters,
    :defaultShopperInteraction,
    :description,
    :id,
    :merchantCity,
    :name,
    :pricingPlan,
    :primarySettlementCurrency,
    :reference,
    :shopWebAddress,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {Adyen.Management.V1.MerchantLinks, :t},
      captureDelay: :string,
      companyId: :string,
      dataCenters: [{Adyen.Management.V1.DataCenter, :t}],
      defaultShopperInteraction: :string,
      description: :string,
      id: :string,
      merchantCity: :string,
      name: :string,
      pricingPlan: :string,
      primarySettlementCurrency: :string,
      reference: :string,
      shopWebAddress: :string,
      status: :string
    ]
  end
end
