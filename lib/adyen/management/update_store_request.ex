defmodule Adyen.Management.UpdateStoreRequest do
  @moduledoc """
  Provides struct and type for a UpdateStoreRequest
  """

  @type t :: %__MODULE__{
          address: Adyen.Management.UpdatableAddress.t() | nil,
          businessLineIds: [String.t()] | nil,
          description: String.t() | nil,
          externalReferenceId: String.t() | nil,
          phoneNumber: String.t() | nil,
          splitConfiguration: Adyen.Management.StoreSplitConfiguration.t() | nil,
          status: String.t() | nil,
          subMerchantData: Adyen.Management.SubMerchantData.t() | nil
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
      address: {Adyen.Management.UpdatableAddress, :t},
      businessLineIds: [:string],
      description: :string,
      externalReferenceId: :string,
      phoneNumber: :string,
      splitConfiguration: {Adyen.Management.StoreSplitConfiguration, :t},
      status: {:enum, ["active", "closed", "inactive"]},
      subMerchantData: {Adyen.Management.SubMerchantData, :t}
    ]
  end
end
