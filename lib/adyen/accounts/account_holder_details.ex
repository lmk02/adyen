defmodule Adyen.Accounts.AccountHolderDetails do
  @moduledoc """
  Provides struct and type for a AccountHolderDetails
  """

  @type t :: %__MODULE__{
          address: Adyen.Accounts.ViasAddress.t(),
          bankAccountDetails: [Adyen.Accounts.BankAccountDetail.t()] | nil,
          bankAggregatorDataReference: String.t() | nil,
          businessDetails: Adyen.Accounts.BusinessDetails.t() | nil,
          email: String.t() | nil,
          fullPhoneNumber: String.t() | nil,
          individualDetails: Adyen.Accounts.IndividualDetails.t() | nil,
          lastReviewDate: String.t() | nil,
          legalArrangements: [Adyen.Accounts.LegalArrangementDetail.t()] | nil,
          merchantCategoryCode: String.t() | nil,
          metadata: map | nil,
          payoutMethods: [Adyen.Accounts.PayoutMethod.t()] | nil,
          phoneNumber: Adyen.Accounts.ViasPhoneNumber.t() | nil,
          principalBusinessAddress: Adyen.Accounts.ViasAddress.t() | nil,
          storeDetails: [Adyen.Accounts.StoreDetail.t()] | nil,
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
    :legalArrangements,
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
      address: {Adyen.Accounts.ViasAddress, :t},
      bankAccountDetails: [{Adyen.Accounts.BankAccountDetail, :t}],
      bankAggregatorDataReference: :string,
      businessDetails: {Adyen.Accounts.BusinessDetails, :t},
      email: :string,
      fullPhoneNumber: :string,
      individualDetails: {Adyen.Accounts.IndividualDetails, :t},
      lastReviewDate: :string,
      legalArrangements: [{Adyen.Accounts.LegalArrangementDetail, :t}],
      merchantCategoryCode: :string,
      metadata: :map,
      payoutMethods: [{Adyen.Accounts.PayoutMethod, :t}],
      phoneNumber: {Adyen.Accounts.ViasPhoneNumber, :t},
      principalBusinessAddress: {Adyen.Accounts.ViasAddress, :t},
      storeDetails: [{Adyen.Accounts.StoreDetail, :t}],
      webAddress: :string
    ]
  end
end
