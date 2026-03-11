defmodule Adyen.Management.CreateMerchantWebhookRequest do
  @moduledoc """
  Provides struct and type for a CreateMerchantWebhookRequest
  """

  @type t :: %__MODULE__{
          acceptsExpiredCertificate: boolean | nil,
          acceptsSelfSignedCertificate: boolean | nil,
          acceptsUntrustedRootCertificate: boolean | nil,
          active: boolean,
          additionalSettings: Adyen.Management.AdditionalSettings.t() | nil,
          communicationFormat: String.t(),
          description: String.t() | nil,
          encryptionProtocol: String.t() | nil,
          networkType: String.t() | nil,
          password: String.t() | nil,
          populateSoapActionHeader: boolean | nil,
          type: String.t(),
          url: String.t(),
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
    :encryptionProtocol,
    :networkType,
    :password,
    :populateSoapActionHeader,
    :type,
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
      additionalSettings: {Adyen.Management.AdditionalSettings, :t},
      communicationFormat: {:enum, ["http", "json", "soap"]},
      description: :string,
      encryptionProtocol: {:enum, ["HTTP", "TLSv1.2", "TLSv1.3"]},
      networkType: {:enum, ["local", "public"]},
      password: :string,
      populateSoapActionHeader: :boolean,
      type: :string,
      url: :string,
      username: :string
    ]
  end
end
