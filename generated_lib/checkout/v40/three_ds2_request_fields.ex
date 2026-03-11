defmodule Adyen.Checkout.V40.ThreeDs2RequestFields do
  @moduledoc """
  Provides struct and type for a ThreeDs2RequestFields
  """

  @type t :: %__MODULE__{
          authenticationOnly: boolean | nil,
          challengeIndicator: String.t() | nil,
          deviceRenderOptions: Adyen.Checkout.V40.DeviceRenderOptions.t() | nil,
          messageVersion: String.t() | nil,
          notificationURL: String.t() | nil,
          sdkAppID: String.t() | nil,
          sdkEphemPubKey: Adyen.Checkout.V40.SDKEphemPubKey.t() | nil,
          sdkMaxTimeout: integer | nil,
          sdkReferenceNumber: String.t() | nil,
          sdkTransID: String.t() | nil,
          threeDSCompInd: String.t() | nil,
          threeDSRequestorID: String.t() | nil,
          threeDSRequestorName: String.t() | nil,
          threeDSRequestorURL: String.t() | nil
        }

  defstruct [
    :authenticationOnly,
    :challengeIndicator,
    :deviceRenderOptions,
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
      deviceRenderOptions: {Adyen.Checkout.V40.DeviceRenderOptions, :t},
      messageVersion: :string,
      notificationURL: :string,
      sdkAppID: :string,
      sdkEphemPubKey: {Adyen.Checkout.V40.SDKEphemPubKey, :t},
      sdkMaxTimeout: {:integer, "int32"},
      sdkReferenceNumber: :string,
      sdkTransID: :string,
      threeDSCompInd: :string,
      threeDSRequestorID: :string,
      threeDSRequestorName: :string,
      threeDSRequestorURL: :string
    ]
  end
end
