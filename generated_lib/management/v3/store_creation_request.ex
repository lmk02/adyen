defmodule Adyen.Management.V3.StoreCreationRequest do
  @moduledoc """
  Provides struct and type for a StoreCreationRequest
  """

  @type t :: %__MODULE__{
          address: Adyen.Management.V3.StoreLocation.t(),
          businessLineIds: [String.t()] | nil,
          description: String.t(),
          externalReferenceId: String.t() | nil,
          localizedInformation: Adyen.Management.V3.LocalizedInformation.t() | nil,
          phoneNumber: String.t(),
          reference: String.t() | nil,
          shopperStatement: String.t(),
          splitConfiguration: Adyen.Management.V3.StoreSplitConfiguration.t() | nil,
          subMerchantData: Adyen.Management.V3.SubMerchantData.t() | nil
        }

  defstruct [
    :address,
    :businessLineIds,
    :description,
    :externalReferenceId,
    :localizedInformation,
    :phoneNumber,
    :reference,
    :shopperStatement,
    :splitConfiguration,
    :subMerchantData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.Management.V3.StoreLocation, :t},
      businessLineIds: [:string],
      description: :string,
      externalReferenceId: :string,
      localizedInformation: {Adyen.Management.V3.LocalizedInformation, :t},
      phoneNumber: :string,
      reference: :string,
      shopperStatement: :string,
      splitConfiguration: {Adyen.Management.V3.StoreSplitConfiguration, :t},
      subMerchantData: {Adyen.Management.V3.SubMerchantData, :t}
    ]
  end
end
