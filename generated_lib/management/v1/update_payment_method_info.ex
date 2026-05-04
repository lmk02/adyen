defmodule Adyen.Management.V1.UpdatePaymentMethodInfo do
  @moduledoc """
  Provides struct and type for a UpdatePaymentMethodInfo
  """

  @type t :: %__MODULE__{
          accel: Adyen.Management.V1.AccelUpdateInfo.t() | nil,
          affirm: Adyen.Management.V1.AffirmUpdateInfo.t() | nil,
          bcmc: Adyen.Management.V1.BcmcUpdateInfo.t() | nil,
          carnet: Adyen.Management.V1.GenericPmWithTdiUpdateInfo.t() | nil,
          cartesBancaires: Adyen.Management.V1.CartesBancairesUpdateInfo.t() | nil,
          countries: [String.t()] | nil,
          cup: Adyen.Management.V1.GenericPmWithTdiUpdateInfo.t() | nil,
          currencies: [String.t()] | nil,
          customRoutingFlags: [String.t()] | nil,
          diners: Adyen.Management.V1.GenericPmWithTdiUpdateInfo.t() | nil,
          discover: Adyen.Management.V1.GenericPmWithTdiUpdateInfo.t() | nil,
          eft_directdebit_CA: Adyen.Management.V1.GenericPmWithTdiUpdateInfo.t() | nil,
          eftpos_australia: Adyen.Management.V1.GenericPmWithTdiUpdateInfo.t() | nil,
          enabled: boolean | nil,
          girocard: Adyen.Management.V1.GenericPmWithTdiUpdateInfo.t() | nil,
          ideal: Adyen.Management.V1.GenericPmWithTdiUpdateInfo.t() | nil,
          interac_card: Adyen.Management.V1.GenericPmWithTdiUpdateInfo.t() | nil,
          jcb: Adyen.Management.V1.GenericPmWithTdiUpdateInfo.t() | nil,
          maestro: Adyen.Management.V1.GenericPmWithTdiUpdateInfo.t() | nil,
          maestro_usa: Adyen.Management.V1.GenericPmWithTdiUpdateInfo.t() | nil,
          mc: Adyen.Management.V1.GenericPmWithTdiUpdateInfo.t() | nil,
          nyce: Adyen.Management.V1.NyceUpdateInfo.t() | nil,
          paybybank_plaid: Adyen.Management.V1.PayByBankPlaidUpdateInfo.t() | nil,
          pulse: Adyen.Management.V1.PulseUpdateInfo.t() | nil,
          sepadirectdebit: Adyen.Management.V1.SepaDirectDebitUpdateInfo.t() | nil,
          star: Adyen.Management.V1.StarUpdateInfo.t() | nil,
          storeIds: [String.t()] | nil,
          visa: Adyen.Management.V1.GenericPmWithTdiUpdateInfo.t() | nil
        }

  defstruct [
    :accel,
    :affirm,
    :bcmc,
    :carnet,
    :cartesBancaires,
    :countries,
    :cup,
    :currencies,
    :customRoutingFlags,
    :diners,
    :discover,
    :eft_directdebit_CA,
    :eftpos_australia,
    :enabled,
    :girocard,
    :ideal,
    :interac_card,
    :jcb,
    :maestro,
    :maestro_usa,
    :mc,
    :nyce,
    :paybybank_plaid,
    :pulse,
    :sepadirectdebit,
    :star,
    :storeIds,
    :visa
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accel: {Adyen.Management.V1.AccelUpdateInfo, :t},
      affirm: {Adyen.Management.V1.AffirmUpdateInfo, :t},
      bcmc: {Adyen.Management.V1.BcmcUpdateInfo, :t},
      carnet: {Adyen.Management.V1.GenericPmWithTdiUpdateInfo, :t},
      cartesBancaires: {Adyen.Management.V1.CartesBancairesUpdateInfo, :t},
      countries: [:string],
      cup: {Adyen.Management.V1.GenericPmWithTdiUpdateInfo, :t},
      currencies: [:string],
      customRoutingFlags: [:string],
      diners: {Adyen.Management.V1.GenericPmWithTdiUpdateInfo, :t},
      discover: {Adyen.Management.V1.GenericPmWithTdiUpdateInfo, :t},
      eft_directdebit_CA: {Adyen.Management.V1.GenericPmWithTdiUpdateInfo, :t},
      eftpos_australia: {Adyen.Management.V1.GenericPmWithTdiUpdateInfo, :t},
      enabled: :boolean,
      girocard: {Adyen.Management.V1.GenericPmWithTdiUpdateInfo, :t},
      ideal: {Adyen.Management.V1.GenericPmWithTdiUpdateInfo, :t},
      interac_card: {Adyen.Management.V1.GenericPmWithTdiUpdateInfo, :t},
      jcb: {Adyen.Management.V1.GenericPmWithTdiUpdateInfo, :t},
      maestro: {Adyen.Management.V1.GenericPmWithTdiUpdateInfo, :t},
      maestro_usa: {Adyen.Management.V1.GenericPmWithTdiUpdateInfo, :t},
      mc: {Adyen.Management.V1.GenericPmWithTdiUpdateInfo, :t},
      nyce: {Adyen.Management.V1.NyceUpdateInfo, :t},
      paybybank_plaid: {Adyen.Management.V1.PayByBankPlaidUpdateInfo, :t},
      pulse: {Adyen.Management.V1.PulseUpdateInfo, :t},
      sepadirectdebit: {Adyen.Management.V1.SepaDirectDebitUpdateInfo, :t},
      star: {Adyen.Management.V1.StarUpdateInfo, :t},
      storeIds: [:string],
      visa: {Adyen.Management.V1.GenericPmWithTdiUpdateInfo, :t}
    ]
  end
end
