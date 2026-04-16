defmodule Adyen.Checkout.V72.ThreeDs2RequestFields do
  @moduledoc """
  Provides struct and type for a ThreeDs2RequestFields
  """

  @type t :: %__MODULE__{
          acctInfo: Adyen.Checkout.V72.AcctInfo.t() | nil,
          acctType: String.t() | nil,
          acquirerBIN: String.t() | nil,
          acquirerMerchantID: String.t() | nil,
          addrMatch: String.t() | nil,
          authenticationOnly: boolean | nil,
          challengeIndicator: String.t() | nil,
          deviceRenderOptions: Adyen.Checkout.V72.DeviceRenderOptions.t() | nil,
          homePhone: Adyen.Checkout.V72.Phone.t() | nil,
          mcc: String.t() | nil,
          merchantName: String.t() | nil,
          messageVersion: String.t() | nil,
          mobilePhone: Adyen.Checkout.V72.Phone.t() | nil,
          notificationURL: String.t() | nil,
          payTokenInd: boolean | nil,
          paymentAuthenticationUseCase: String.t() | nil,
          purchaseInstalData: String.t() | nil,
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          sdkAppID: String.t() | nil,
          sdkEphemPubKey: Adyen.Checkout.V72.SDKEphemPubKey.t() | nil,
          sdkMaxTimeout: integer | nil,
          sdkReferenceNumber: String.t() | nil,
          sdkTransID: String.t() | nil,
          threeDSCompInd: String.t() | nil,
          threeDSRequestorAuthenticationInd: String.t() | nil,
          threeDSRequestorAuthenticationInfo:
            Adyen.Checkout.V72.ThreeDSRequestorAuthenticationInfo.t() | nil,
          threeDSRequestorChallengeInd: String.t() | nil,
          threeDSRequestorID: String.t() | nil,
          threeDSRequestorName: String.t() | nil,
          threeDSRequestorPriorAuthenticationInfo:
            Adyen.Checkout.V72.ThreeDSRequestorPriorAuthenticationInfo.t() | nil,
          threeDSRequestorURL: String.t() | nil,
          transType: String.t() | nil,
          transactionType: String.t() | nil,
          whiteListStatus: String.t() | nil,
          workPhone: Adyen.Checkout.V72.Phone.t() | nil
        }

  defstruct [
    :acctInfo,
    :acctType,
    :acquirerBIN,
    :acquirerMerchantID,
    :addrMatch,
    :authenticationOnly,
    :challengeIndicator,
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
    :sdkEphemPubKey,
    :sdkMaxTimeout,
    :sdkReferenceNumber,
    :sdkTransID,
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
      acctInfo: {Adyen.Checkout.V72.AcctInfo, :t},
      acctType: {:enum, ["01", "02", "03"]},
      acquirerBIN: :string,
      acquirerMerchantID: :string,
      addrMatch: {:enum, ["Y", "N"]},
      authenticationOnly: :boolean,
      challengeIndicator:
        {:enum,
         ["noPreference", "requestNoChallenge", "requestChallenge", "requestChallengeAsMandate"]},
      deviceRenderOptions: {Adyen.Checkout.V72.DeviceRenderOptions, :t},
      homePhone: {Adyen.Checkout.V72.Phone, :t},
      mcc: :string,
      merchantName: :string,
      messageVersion: :string,
      mobilePhone: {Adyen.Checkout.V72.Phone, :t},
      notificationURL: :string,
      payTokenInd: :boolean,
      paymentAuthenticationUseCase: :string,
      purchaseInstalData: :string,
      recurringExpiry: :string,
      recurringFrequency: :string,
      sdkAppID: :string,
      sdkEphemPubKey: {Adyen.Checkout.V72.SDKEphemPubKey, :t},
      sdkMaxTimeout: {:integer, "int32"},
      sdkReferenceNumber: :string,
      sdkTransID: :string,
      threeDSCompInd: :string,
      threeDSRequestorAuthenticationInd: :string,
      threeDSRequestorAuthenticationInfo:
        {Adyen.Checkout.V72.ThreeDSRequestorAuthenticationInfo, :t},
      threeDSRequestorChallengeInd: {:enum, ["01", "02", "03", "04", "05", "06"]},
      threeDSRequestorID: :string,
      threeDSRequestorName: :string,
      threeDSRequestorPriorAuthenticationInfo:
        {Adyen.Checkout.V72.ThreeDSRequestorPriorAuthenticationInfo, :t},
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
      workPhone: {Adyen.Checkout.V72.Phone, :t}
    ]
  end
end
