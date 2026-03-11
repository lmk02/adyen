defmodule Adyen.Checkout.V67.ThreeDs2RequestFields do
  @moduledoc """
  Provides struct and type for a ThreeDs2RequestFields
  """

  @type t :: %__MODULE__{
          acquirerBIN: String.t() | nil,
          acquirerMerchantID: String.t() | nil,
          authenticationOnly: boolean | nil,
          challengeIndicator: String.t() | nil,
          deviceRenderOptions: Adyen.Checkout.V67.DeviceRenderOptions.t() | nil,
          mcc: String.t() | nil,
          merchantName: String.t() | nil,
          messageVersion: String.t() | nil,
          notificationURL: String.t() | nil,
          sdkAppID: String.t() | nil,
          sdkEphemPubKey: Adyen.Checkout.V67.SDKEphemPubKey.t() | nil,
          sdkMaxTimeout: integer | nil,
          sdkReferenceNumber: String.t() | nil,
          sdkTransID: String.t() | nil,
          threeDSCompInd: String.t() | nil,
          threeDSRequestorID: String.t() | nil,
          threeDSRequestorName: String.t() | nil,
          threeDSRequestorURL: String.t() | nil,
          transactionType: String.t() | nil,
          whiteListStatus: String.t() | nil
        }

  defstruct [
    :acquirerBIN,
    :acquirerMerchantID,
    :authenticationOnly,
    :challengeIndicator,
    :deviceRenderOptions,
    :mcc,
    :merchantName,
    :messageVersion,
    :notificationURL,
    :sdkAppID,
    :sdkEphemPubKey,
    :sdkMaxTimeout,
    :sdkReferenceNumber,
    :sdkTransID,
    :threeDSCompInd,
    :threeDSRequestorID,
    :threeDSRequestorName,
    :threeDSRequestorURL,
    :transactionType,
    :whiteListStatus
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      acquirerBIN: :string,
      acquirerMerchantID: :string,
      authenticationOnly: :boolean,
      challengeIndicator:
        {:enum,
         ["noPreference", "requestNoChallenge", "requestChallenge", "requestChallengeAsMandate"]},
      deviceRenderOptions: {Adyen.Checkout.V67.DeviceRenderOptions, :t},
      mcc: :string,
      merchantName: :string,
      messageVersion: :string,
      notificationURL: :string,
      sdkAppID: :string,
      sdkEphemPubKey: {Adyen.Checkout.V67.SDKEphemPubKey, :t},
      sdkMaxTimeout: {:integer, "int32"},
      sdkReferenceNumber: :string,
      sdkTransID: :string,
      threeDSCompInd: :string,
      threeDSRequestorID: :string,
      threeDSRequestorName: :string,
      threeDSRequestorURL: :string,
      transactionType:
        {:enum,
         [
           "goodsOrServicePurchase",
           "checkAcceptance",
           "accountFunding",
           "quasiCashTransaction",
           "prepaidActivationAndLoad"
         ]},
      whiteListStatus: :string
    ]
  end
end
