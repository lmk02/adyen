defmodule Adyen.Management.V3.Webhook do
  @moduledoc """
  Provides struct and type for a Webhook
  """

  @type t :: %__MODULE__{
          _links: Adyen.Management.V3.WebhookLinks.t() | nil,
          acceptsExpiredCertificate: boolean | nil,
          acceptsSelfSignedCertificate: boolean | nil,
          acceptsUntrustedRootCertificate: boolean | nil,
          accountReference: String.t() | nil,
          active: boolean,
          additionalSettings: Adyen.Management.V3.AdditionalSettingsResponse.t() | nil,
          certificateAlias: String.t() | nil,
          communicationFormat: String.t(),
          description: String.t() | nil,
          encryptionProtocol: String.t() | nil,
          filterMerchantAccountType: String.t() | nil,
          filterMerchantAccounts: [String.t()] | nil,
          hasError: boolean | nil,
          hasPassword: boolean | nil,
          hmacKeyCheckValue: String.t() | nil,
          id: String.t() | nil,
          networkType: String.t() | nil,
          populateSoapActionHeader: boolean | nil,
          type: String.t(),
          url: String.t(),
          username: String.t() | nil
        }

  defstruct [
    :_links,
    :acceptsExpiredCertificate,
    :acceptsSelfSignedCertificate,
    :acceptsUntrustedRootCertificate,
    :accountReference,
    :active,
    :additionalSettings,
    :certificateAlias,
    :communicationFormat,
    :description,
    :encryptionProtocol,
    :filterMerchantAccountType,
    :filterMerchantAccounts,
    :hasError,
    :hasPassword,
    :hmacKeyCheckValue,
    :id,
    :networkType,
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
      _links: {Adyen.Management.V3.WebhookLinks, :t},
      acceptsExpiredCertificate: :boolean,
      acceptsSelfSignedCertificate: :boolean,
      acceptsUntrustedRootCertificate: :boolean,
      accountReference: :string,
      active: :boolean,
      additionalSettings: {Adyen.Management.V3.AdditionalSettingsResponse, :t},
      certificateAlias: :string,
      communicationFormat: {:enum, ["http", "json", "soap"]},
      description: :string,
      encryptionProtocol: {:enum, ["HTTP", "TLSv1.2", "TLSv1.3"]},
      filterMerchantAccountType: {:enum, ["allAccounts", "excludeAccounts", "includeAccounts"]},
      filterMerchantAccounts: [:string],
      hasError: :boolean,
      hasPassword: :boolean,
      hmacKeyCheckValue: :string,
      id: :string,
      networkType: {:enum, ["local", "public"]},
      populateSoapActionHeader: :boolean,
      type: :string,
      url: :string,
      username: :string
    ]
  end
end
