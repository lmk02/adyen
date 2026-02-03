defmodule Adyen.Checkout.ThreeDs2RequestData do
  @moduledoc """
  Provides struct and type for a ThreeDs2RequestData
  """

  alias Adyen.Checkout.AcctInfo
  alias Adyen.Checkout.DeviceRenderOptions
  alias Adyen.Checkout.Phone
  alias Adyen.Checkout.SDKEphemPubKey
  alias Adyen.Checkout.ThreeDSRequestorAuthenticationInfo
  alias Adyen.Checkout.ThreeDSRequestorPriorAuthenticationInfo

  @type t :: %__MODULE__{
          acctInfo: AcctInfo.t() | nil,
          acctType: String.t() | nil,
          acquirerBIN: String.t() | nil,
          acquirerMerchantID: String.t() | nil,
          addrMatch: String.t() | nil,
          authenticationOnly: boolean | nil,
          challengeIndicator: String.t() | nil,
          deviceChannel: String.t(),
          deviceRenderOptions: DeviceRenderOptions.t() | nil,
          homePhone: Phone.t() | nil,
          mcc: String.t() | nil,
          merchantName: String.t() | nil,
          messageVersion: String.t() | nil,
          mobilePhone: Phone.t() | nil,
          notificationURL: String.t() | nil,
          payTokenInd: boolean | nil,
          paymentAuthenticationUseCase: String.t() | nil,
          purchaseInstalData: String.t() | nil,
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          sdkAppID: String.t() | nil,
          sdkEncData: String.t() | nil,
          sdkEphemPubKey: SDKEphemPubKey.t() | nil,
          sdkMaxTimeout: integer | nil,
          sdkReferenceNumber: String.t() | nil,
          sdkTransID: String.t() | nil,
          sdkVersion: String.t() | nil,
          threeDSCompInd: String.t() | nil,
          threeDSRequestorAuthenticationInd: String.t() | nil,
          threeDSRequestorAuthenticationInfo: ThreeDSRequestorAuthenticationInfo.t() | nil,
          threeDSRequestorChallengeInd: String.t() | nil,
          threeDSRequestorID: String.t() | nil,
          threeDSRequestorName: String.t() | nil,
          threeDSRequestorPriorAuthenticationInfo: ThreeDSRequestorPriorAuthenticationInfo.t() | nil,
          threeDSRequestorURL: String.t() | nil,
          transType: String.t() | nil,
          transactionType: String.t() | nil,
          whiteListStatus: String.t() | nil,
          workPhone: Phone.t() | nil
        }

  defstruct [
    :acctInfo,
    :acctType,
    :acquirerBIN,
    :acquirerMerchantID,
    :addrMatch,
    :authenticationOnly,
    :challengeIndicator,
    :deviceChannel,
    :deviceRenderOptions,
    :homePhone,
    :mcc,
    :merchantName,
    :messageVersion,
    :mobilePhone,
    :notificationURL,
    :payTokenInd,
    :paymentAuthenticationUseCase,
    :purchaseInstalData,
    :recurringExpiry,
    :recurringFrequency,
    :sdkAppID,
    :sdkEncData,
    :sdkEphemPubKey,
    :sdkMaxTimeout,
    :sdkReferenceNumber,
    :sdkTransID,
    :sdkVersion,
    :threeDSCompInd,
    :threeDSRequestorAuthenticationInd,
    :threeDSRequestorAuthenticationInfo,
    :threeDSRequestorChallengeInd,
    :threeDSRequestorID,
    :threeDSRequestorName,
    :threeDSRequestorPriorAuthenticationInfo,
    :threeDSRequestorURL,
    :transType,
    :transactionType,
    :whiteListStatus,
    :workPhone
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      acctInfo: {AcctInfo, :t},
      acctType: {:enum, ["01", "02", "03"]},
      acquirerBIN: :string,
      acquirerMerchantID: :string,
      addrMatch: {:enum, ["Y", "N"]},
      authenticationOnly: :boolean,
      challengeIndicator:
        {:enum, ["noPreference", "requestNoChallenge", "requestChallenge", "requestChallengeAsMandate"]},
      deviceChannel: :string,
      deviceRenderOptions: {DeviceRenderOptions, :t},
      homePhone: {Phone, :t},
      mcc: :string,
      merchantName: :string,
      messageVersion: :string,
      mobilePhone: {Phone, :t},
      notificationURL: :string,
      payTokenInd: :boolean,
      paymentAuthenticationUseCase: :string,
      purchaseInstalData: :string,
      recurringExpiry: :string,
      recurringFrequency: :string,
      sdkAppID: :string,
      sdkEncData: :string,
      sdkEphemPubKey: {SDKEphemPubKey, :t},
      sdkMaxTimeout: {:integer, "int32"},
      sdkReferenceNumber: :string,
      sdkTransID: :string,
      sdkVersion: :string,
      threeDSCompInd: :string,
      threeDSRequestorAuthenticationInd: :string,
      threeDSRequestorAuthenticationInfo: {ThreeDSRequestorAuthenticationInfo, :t},
      threeDSRequestorChallengeInd: {:enum, ["01", "02", "03", "04", "05", "06"]},
      threeDSRequestorID: :string,
      threeDSRequestorName: :string,
      threeDSRequestorPriorAuthenticationInfo: {ThreeDSRequestorPriorAuthenticationInfo, :t},
      threeDSRequestorURL: :string,
      transType: {:enum, ["01", "03", "10", "11", "28"]},
      transactionType:
        {:enum,
         [
           "goodsOrServicePurchase",
           "checkAcceptance",
           "accountFunding",
           "quasiCashTransaction",
           "prepaidActivationAndLoad"
         ]},
      whiteListStatus: :string,
      workPhone: {Phone, :t}
    ]
  end
end
