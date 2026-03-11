defmodule Adyen.Account.V4.AccountHolderDetails do
  @moduledoc """
  Provides struct and type for a AccountHolderDetails
  """

  @type t :: %__MODULE__{
          address: Adyen.Account.V4.ViasAddress.t(),
          bankAccountDetails: [Adyen.Account.V4.BankAccountDetailWrapper.t()] | nil,
          businessDetails: Adyen.Account.V4.BusinessDetails.t() | nil,
          email: String.t() | nil,
          fullPhoneNumber: String.t() | nil,
          individualDetails: Adyen.Account.V4.IndividualDetails.t() | nil,
          lastReviewDate: String.t() | nil,
          merchantCategoryCode: String.t() | nil,
          metadata: map | nil,
          phoneNumber: Adyen.Account.V4.ViasPhoneNumber.t() | nil,
          principalBusinessAddress: Adyen.Account.V4.ViasAddress.t() | nil,
          webAddress: String.t() | nil
        }

  defstruct [
    :address,
    :bankAccountDetails,
    :businessDetails,
    :email,
    :fullPhoneNumber,
    :individualDetails,
    :lastReviewDate,
    :merchantCategoryCode,
    :metadata,
    :phoneNumber,
    :principalBusinessAddress,
    :webAddress
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {Adyen.Account.V4.ViasAddress, :t},
      bankAccountDetails: [{Adyen.Account.V4.BankAccountDetailWrapper, :t}],
      businessDetails: {Adyen.Account.V4.BusinessDetails, :t},
      email: :string,
      fullPhoneNumber: :string,
      individualDetails: {Adyen.Account.V4.IndividualDetails, :t},
      lastReviewDate: :string,
      merchantCategoryCode: :string,
      metadata: :map,
      phoneNumber: {Adyen.Account.V4.ViasPhoneNumber, :t},
      principalBusinessAddress: {Adyen.Account.V4.ViasAddress, :t},
      webAddress: :string
    ]
  end
end
