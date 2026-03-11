defmodule Adyen.Account.V5.AccountHolderDetails do
  @moduledoc """
  Provides struct and type for a AccountHolderDetails
  """

  @type t :: %__MODULE__{
          address: Adyen.Account.V5.ViasAddress.t(),
          bankAccountDetails: [Adyen.Account.V5.BankAccountDetail.t()] | nil,
          bankAggregatorDataReference: String.t() | nil,
          businessDetails: Adyen.Account.V5.BusinessDetails.t() | nil,
          email: String.t() | nil,
          fullPhoneNumber: String.t() | nil,
          individualDetails: Adyen.Account.V5.IndividualDetails.t() | nil,
          lastReviewDate: String.t() | nil,
          merchantCategoryCode: String.t() | nil,
          metadata: map | nil,
          payoutMethods: [Adyen.Account.V5.PayoutMethod.t()] | nil,
          phoneNumber: Adyen.Account.V5.ViasPhoneNumber.t() | nil,
          principalBusinessAddress: Adyen.Account.V5.ViasAddress.t() | nil,
          storeDetails: [Adyen.Account.V5.StoreDetail.t()] | nil,
          webAddress: String.t() | nil
        }

  defstruct [
    :address,
    :bankAccountDetails,
    :bankAggregatorDataReference,
    :businessDetails,
    :email,
    :fullPhoneNumber,
    :individualDetails,
    :lastReviewDate,
    :merchantCategoryCode,
    :metadata,
    :payoutMethods,
    :phoneNumber,
    :principalBusinessAddress,
    :storeDetails,
    :webAddress
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.Account.V5.ViasAddress, :t},
      bankAccountDetails: [{Adyen.Account.V5.BankAccountDetail, :t}],
      bankAggregatorDataReference: :string,
      businessDetails: {Adyen.Account.V5.BusinessDetails, :t},
      email: :string,
      fullPhoneNumber: :string,
      individualDetails: {Adyen.Account.V5.IndividualDetails, :t},
      lastReviewDate: :string,
      merchantCategoryCode: :string,
      metadata: :map,
      payoutMethods: [{Adyen.Account.V5.PayoutMethod, :t}],
      phoneNumber: {Adyen.Account.V5.ViasPhoneNumber, :t},
      principalBusinessAddress: {Adyen.Account.V5.ViasAddress, :t},
      storeDetails: [{Adyen.Account.V5.StoreDetail, :t}],
      webAddress: :string
    ]
  end
end
