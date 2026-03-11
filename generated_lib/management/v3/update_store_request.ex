defmodule Adyen.Management.V3.UpdateStoreRequest do
  @moduledoc """
  Provides struct and type for a UpdateStoreRequest
  """

  @type t :: %__MODULE__{
          address: Adyen.Management.V3.UpdatableAddress.t() | nil,
          businessLineIds: [String.t()] | nil,
          description: String.t() | nil,
          externalReferenceId: String.t() | nil,
          phoneNumber: String.t() | nil,
          splitConfiguration: Adyen.Management.V3.StoreSplitConfiguration.t() | nil,
          status: String.t() | nil,
          subMerchantData: Adyen.Management.V3.SubMerchantData.t() | nil
        }

  defstruct [
    :address,
    :businessLineIds,
    :description,
    :externalReferenceId,
    :phoneNumber,
    :splitConfiguration,
    :status,
    :subMerchantData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.Management.V3.UpdatableAddress, :t},
      businessLineIds: [:string],
      description: :string,
      externalReferenceId: :string,
      phoneNumber: :string,
      splitConfiguration: {Adyen.Management.V3.StoreSplitConfiguration, :t},
      status: {:enum, ["active", "closed", "inactive"]},
      subMerchantData: {Adyen.Management.V3.SubMerchantData, :t}
    ]
  end
end
