defmodule Adyen.Payment.V46.ThreeDs2RequestData do
  @moduledoc """
  Provides struct and type for a ThreeDs2RequestData
  """

  @type t :: %__MODULE__{
          authenticationOnly: boolean | nil,
          challengeIndicator: String.t() | nil,
          deviceChannel: String.t(),
          deviceRenderOptions: Adyen.Payment.V46.DeviceRenderOptions.t() | nil,
          messageVersion: String.t() | nil,
          notificationURL: String.t() | nil,
          sdkAppID: String.t() | nil,
          sdkEncData: String.t() | nil,
          sdkEphemPubKey: Adyen.Payment.V46.SDKEphemPubKey.t() | nil,
          sdkMaxTimeout: integer | nil,
          sdkReferenceNumber: String.t() | nil,
          sdkTransID: String.t() | nil,
          sdkVersion: String.t() | nil,
          threeDSCompInd: String.t() | nil,
          threeDSRequestorID: String.t() | nil,
          threeDSRequestorName: String.t() | nil,
          threeDSRequestorURL: String.t() | nil
        }

  defstruct [
    :authenticationOnly,
    :challengeIndicator,
    :deviceChannel,
    :deviceRenderOptions,
    :messageVersion,
    :notificationURL,
    :sdkAppID,
    :sdkEncData,
    :sdkEphemPubKey,
    :sdkMaxTimeout,
    :sdkReferenceNumber,
    :sdkTransID,
    :sdkVersion,
    :threeDSCompInd,
    :threeDSRequestorID,
    :threeDSRequestorName,
    :threeDSRequestorURL
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authenticationOnly: :boolean,
      challengeIndicator:
        {:enum,
         ["noPreference", "requestNoChallenge", "requestChallenge", "requestChallengeAsMandate"]},
      deviceChannel: :string,
      deviceRenderOptions: {Adyen.Payment.V46.DeviceRenderOptions, :t},
      messageVersion: :string,
      notificationURL: :string,
      sdkAppID: :string,
      sdkEncData: :string,
      sdkEphemPubKey: {Adyen.Payment.V46.SDKEphemPubKey, :t},
      sdkMaxTimeout: {:integer, "int32"},
      sdkReferenceNumber: :string,
      sdkTransID: :string,
      sdkVersion: :string,
      threeDSCompInd: :string,
      threeDSRequestorID: :string,
      threeDSRequestorName: :string,
      threeDSRequestorURL: :string
    ]
  end
end
