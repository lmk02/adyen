defmodule Adyen.Transaction.V4.PatchableNotDeliveredInfo do
  @moduledoc """
  Provides struct and type for a PatchableNotDeliveredInfo
  """

  @type t :: %__MODULE__{
          agreedDeliveryLocation: String.t() | nil,
          dateOfCancellation: Date.t() | nil,
          deliveredToWrongLocation: boolean | nil,
          descriptionOfIssue: String.t() | nil,
          didCardholderReturn: boolean | nil,
          isDeliveryLate: boolean | nil,
          isMerchantBankrupt: boolean | nil,
          isNonFiatOrNft: boolean | nil,
          lastExpectedDate: Date.t() | nil,
          whatWasNotDelivered: String.t() | nil,
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
      agreedDeliveryLocation: {:union, [:string, :null]},
      dateOfCancellation: {:union, [{:string, "date"}, :null]},
      deliveredToWrongLocation: {:union, [:boolean, :null]},
      descriptionOfIssue: :string,
      didCardholderReturn: {:union, [:boolean, :null]},
      isDeliveryLate: {:union, [:boolean, :null]},
      isMerchantBankrupt: {:union, [:boolean, :null]},
      isNonFiatOrNft: {:union, [:boolean, :null]},
      lastExpectedDate: {:string, "date"},
      whatWasNotDelivered: {:enum, ["goods", "services"]},
      whoCancelled: {:union, [{:enum, ["merchant", "cardholder"]}, :null]}
    ]
  end
end
