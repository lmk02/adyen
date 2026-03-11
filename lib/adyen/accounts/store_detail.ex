defmodule Adyen.Accounts.StoreDetail do
  @moduledoc """
  Provides struct and type for a StoreDetail
  """

  @type t :: %__MODULE__{
          address: Adyen.Accounts.ViasAddress.t(),
          fullPhoneNumber: String.t() | nil,
          logo: String.t() | nil,
          merchantAccount: String.t(),
          merchantCategoryCode: String.t(),
          merchantHouseNumber: String.t() | nil,
          phoneNumber: Adyen.Accounts.ViasPhoneNumber.t() | nil,
          shopperInteraction: String.t() | nil,
          splitConfigurationUUID: String.t() | nil,
          status: String.t() | nil,
          store: String.t() | nil,
          storeName: String.t() | nil,
          storeReference: String.t() | nil,
          virtualAccount: String.t() | nil,
          webAddress: String.t() | nil
        }

  defstruct [
    :address,
    :fullPhoneNumber,
    :logo,
    :merchantAccount,
    :merchantCategoryCode,
    :merchantHouseNumber,
    :phoneNumber,
    :shopperInteraction,
    :splitConfigurationUUID,
    :status,
    :store,
    :storeName,
    :storeReference,
    :virtualAccount,
    :webAddress
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.Accounts.ViasAddress, :t},
      fullPhoneNumber: :string,
      logo: :string,
      merchantAccount: :string,
      merchantCategoryCode: :string,
      merchantHouseNumber: :string,
      phoneNumber: {Adyen.Accounts.ViasPhoneNumber, :t},
      shopperInteraction: {:enum, ["Ecommerce", "POS"]},
      splitConfigurationUUID: :string,
      status: {:enum, ["Active", "Closed", "Inactive", "InactiveWithModifications", "Pending"]},
      store: :string,
      storeName: :string,
      storeReference: :string,
      virtualAccount: :string,
      webAddress: :string
    ]
  end
end
