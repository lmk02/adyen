defmodule Adyen.Management.V1.CreateCompanyWebhookRequest do
  @moduledoc """
  Provides struct and type for a CreateCompanyWebhookRequest
  """

  @type t :: %__MODULE__{
          acceptsExpiredCertificate: boolean | nil,
          acceptsSelfSignedCertificate: boolean | nil,
          acceptsUntrustedRootCertificate: boolean | nil,
          active: boolean,
          additionalSettings: Adyen.Management.V1.AdditionalSettings.t() | nil,
          communicationFormat: String.t(),
          description: String.t() | nil,
          filterMerchantAccountType: String.t(),
          filterMerchantAccounts: [String.t()],
          networkType: String.t() | nil,
          password: String.t() | nil,
          populateSoapActionHeader: boolean | nil,
          sslVersion: String.t() | nil,
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
    :filterMerchantAccountType,
    :filterMerchantAccounts,
    :networkType,
    :password,
    :populateSoapActionHeader,
    :sslVersion,
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
      additionalSettings: {Adyen.Management.V1.AdditionalSettings, :t},
      communicationFormat: {:enum, ["http", "json", "soap"]},
      description: :string,
      filterMerchantAccountType: {:enum, ["allAccounts", "excludeAccounts", "includeAccounts"]},
      filterMerchantAccounts: [:string],
      networkType: {:enum, ["local", "public"]},
      password: :string,
      populateSoapActionHeader: :boolean,
      sslVersion: {:enum, ["HTTP", "TLSv1.2", "TLSv1.3"]},
      type: :string,
      url: :string,
      username: :string
    ]
  end
end
