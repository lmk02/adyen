defmodule Adyen.Management.V3.Store do
  @moduledoc """
  Provides struct and type for a Store
  """

  @type t :: %__MODULE__{
          _links: Adyen.Management.V3.Links.t() | nil,
          address: Adyen.Management.V3.StoreLocation.t() | nil,
          businessLineIds: [String.t()] | nil,
          description: String.t() | nil,
          externalReferenceId: String.t() | nil,
          id: String.t() | nil,
          localizedInformation: Adyen.Management.V3.LocalizedInformation.t() | nil,
          merchantId: String.t() | nil,
          phoneNumber: String.t() | nil,
          reference: String.t() | nil,
          shopperStatement: String.t() | nil,
          splitConfiguration: Adyen.Management.V3.StoreSplitConfiguration.t() | nil,
          status: String.t() | nil,
          subMerchantData: Adyen.Management.V3.SubMerchantData.t() | nil
        }

  defstruct [
    :_links,
    :address,
    :businessLineIds,
    :description,
    :externalReferenceId,
    :id,
    :localizedInformation,
    :merchantId,
    :phoneNumber,
    :reference,
    :shopperStatement,
    :splitConfiguration,
    :status,
    :subMerchantData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {Adyen.Management.V3.Links, :t},
      address: {Adyen.Management.V3.StoreLocation, :t},
      businessLineIds: [:string],
      description: :string,
      externalReferenceId: :string,
      id: :string,
      localizedInformation: {Adyen.Management.V3.LocalizedInformation, :t},
      merchantId: :string,
      phoneNumber: :string,
      reference: :string,
      shopperStatement: :string,
      splitConfiguration: {Adyen.Management.V3.StoreSplitConfiguration, :t},
      status: {:enum, ["active", "closed", "inactive"]},
      subMerchantData: {Adyen.Management.V3.SubMerchantData, :t}
    ]
  end
end
