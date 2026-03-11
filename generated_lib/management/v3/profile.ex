defmodule Adyen.Management.V3.Profile do
  @moduledoc """
  Provides struct and type for a Profile
  """

  @type t :: %__MODULE__{
          authType: String.t(),
          autoWifi: boolean | nil,
          bssType: String.t(),
          channel: integer | nil,
          defaultProfile: boolean | nil,
          domainSuffix: String.t() | nil,
          eap: String.t() | nil,
          eapCaCert: Adyen.Management.V3.File.t() | nil,
          eapClientCert: Adyen.Management.V3.File.t() | nil,
          eapClientKey: Adyen.Management.V3.File.t() | nil,
          eapClientPwd: String.t() | nil,
          eapIdentity: String.t() | nil,
          eapIntermediateCert: Adyen.Management.V3.File.t() | nil,
          eapPwd: String.t() | nil,
          hiddenSsid: boolean | nil,
          name: String.t() | nil,
          psk: String.t() | nil,
          ssid: String.t(),
          wsec: String.t()
        }

  defstruct [
    :authType,
    :autoWifi,
    :bssType,
    :channel,
    :defaultProfile,
    :domainSuffix,
    :eap,
    :eapCaCert,
    :eapClientCert,
    :eapClientKey,
    :eapClientPwd,
    :eapIdentity,
    :eapIntermediateCert,
    :eapPwd,
    :hiddenSsid,
    :name,
    :psk,
    :ssid,
    :wsec
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authType: :string,
      autoWifi: :boolean,
      bssType: :string,
      channel: {:integer, "int32"},
      defaultProfile: :boolean,
      domainSuffix: :string,
      eap: :string,
      eapCaCert: {Adyen.Management.V3.File, :t},
      eapClientCert: {Adyen.Management.V3.File, :t},
      eapClientKey: {Adyen.Management.V3.File, :t},
      eapClientPwd: :string,
      eapIdentity: :string,
      eapIntermediateCert: {Adyen.Management.V3.File, :t},
      eapPwd: :string,
      hiddenSsid: :boolean,
      name: :string,
      psk: :string,
      ssid: :string,
      wsec: :string
    ]
  end
end
