defmodule Adyen.Transaction.NotDeliveredInfo do
  @moduledoc """
  Provides struct and type for a NotDeliveredInfo
  """

  @type t :: %__MODULE__{
          agreedDeliveryLocation: String.t() | nil,
          dateOfCancellation: Date.t() | nil,
          deliveredToWrongLocation: boolean | nil,
          descriptionOfIssue: String.t(),
          didCardholderReturn: boolean | nil,
          isDeliveryLate: boolean | nil,
          isMerchantBankrupt: boolean | nil,
          isNonFiatOrNft: boolean | nil,
          lastExpectedDate: Date.t(),
          whatWasNotDelivered: String.t(),
          whoCancelled: String.t() | nil
        }

  defstruct [
    :agreedDeliveryLocation,
    :dateOfCancellation,
    :deliveredToWrongLocation,
    :descriptionOfIssue,
    :didCardholderReturn,
    :isDeliveryLate,
    :isMerchantBankrupt,
    :isNonFiatOrNft,
    :lastExpectedDate,
    :whatWasNotDelivered,
    :whoCancelled
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agreedDeliveryLocation: :string,
      dateOfCancellation: {:string, "date"},
      deliveredToWrongLocation: :boolean,
      descriptionOfIssue: :string,
      didCardholderReturn: :boolean,
      isDeliveryLate: :boolean,
      isMerchantBankrupt: :boolean,
      isNonFiatOrNft: :boolean,
      lastExpectedDate: {:string, "date"},
      whatWasNotDelivered: {:enum, ["goods", "services"]},
      whoCancelled: {:enum, ["merchant", "cardholder"]}
    ]
  end
end
