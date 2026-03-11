defmodule Adyen.Management.V1.UpdateStoreRequest do
  @moduledoc """
  Provides struct and type for a UpdateStoreRequest
  """

  @type t :: %__MODULE__{
          address: Adyen.Management.V1.UpdatableAddress.t() | nil,
          businessLineIds: [String.t()] | nil,
          description: String.t() | nil,
          externalReferenceId: String.t() | nil,
          phoneNumber: String.t() | nil,
          splitConfiguration: Adyen.Management.V1.StoreSplitConfiguration.t() | nil,
          status: String.t() | nil
        }

  defstruct [
    :address,
    :businessLineIds,
    :description,
    :externalReferenceId,
    :phoneNumber,
    :splitConfiguration,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.Management.V1.UpdatableAddress, :t},
      businessLineIds: [:string],
      description: :string,
      externalReferenceId: :string,
      phoneNumber: :string,
      splitConfiguration: {Adyen.Management.V1.StoreSplitConfiguration, :t},
      status: {:enum, ["active", "closed", "inactive"]}
    ]
  end
end
