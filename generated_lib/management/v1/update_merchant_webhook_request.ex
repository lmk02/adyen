defmodule Adyen.Management.V1.UpdateMerchantWebhookRequest do
  @moduledoc """
  Provides struct and type for a UpdateMerchantWebhookRequest
  """

  @type t :: %__MODULE__{
          acceptsExpiredCertificate: boolean | nil,
          acceptsSelfSignedCertificate: boolean | nil,
          acceptsUntrustedRootCertificate: boolean | nil,
          active: boolean | nil,
          additionalSettings: Adyen.Management.V1.AdditionalSettings.t() | nil,
          communicationFormat: String.t() | nil,
          description: String.t() | nil,
          networkType: String.t() | nil,
          password: String.t() | nil,
          populateSoapActionHeader: boolean | nil,
          sslVersion: String.t() | nil,
          url: String.t() | nil,
          username: String.t() | nil
        }

  defstruct [
    :acceptsExpiredCertificate,
    :acceptsSelfSignedCertificate,
    :acceptsUntrustedRootCertificate,
    :active,
    :additionalSettings,
    :communicationFormat,
    :description,
    :networkType,
    :password,
    :populateSoapActionHeader,
    :sslVersion,
    :url,
    :username
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      acceptsExpiredCertificate: :boolean,
      acceptsSelfSignedCertificate: :boolean,
      acceptsUntrustedRootCertificate: :boolean,
      active: :boolean,
      additionalSettings: {Adyen.Management.V1.AdditionalSettings, :t},
      communicationFormat: {:enum, ["http", "json", "soap"]},
      description: :string,
      networkType: {:enum, ["local", "public"]},
      password: :string,
      populateSoapActionHeader: :boolean,
      sslVersion: {:enum, ["HTTP", "TLSv1.2", "TLSv1.3"]},
      url: :string,
      username: :string
    ]
  end
end
