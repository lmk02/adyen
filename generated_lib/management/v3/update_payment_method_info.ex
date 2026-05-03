defmodule Adyen.Management.V3.UpdatePaymentMethodInfo do
  @moduledoc """
  Provides struct and type for a UpdatePaymentMethodInfo
  """

  @type t :: %__MODULE__{
          accel: Adyen.Management.V3.AccelUpdateInfo.t() | nil,
          affirm: Adyen.Management.V3.AffirmUpdateInfo.t() | nil,
          bcmc: Adyen.Management.V3.BcmcUpdateInfo.t() | nil,
          carnet: Adyen.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          cartesBancaires: Adyen.Management.V3.CartesBancairesUpdateInfo.t() | nil,
          countries: [String.t()] | nil,
          cup: Adyen.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          currencies: [String.t()] | nil,
          customRoutingFlags: [String.t()] | nil,
          diners: Adyen.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          discover: Adyen.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          eft_directdebit_CA: Adyen.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          eftpos_australia: Adyen.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          enabled: boolean | nil,
          girocard: Adyen.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          ideal: Adyen.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          interac_card: Adyen.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          jcb: Adyen.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          maestro: Adyen.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          maestro_usa: Adyen.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          mc: Adyen.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          nyce: Adyen.Management.V3.NyceUpdateInfo.t() | nil,
          paybybank_plaid: Adyen.Management.V3.PayByBankPlaidUpdateInfo.t() | nil,
          pulse: Adyen.Management.V3.PulseUpdateInfo.t() | nil,
          sepadirectdebit: Adyen.Management.V3.SepaDirectDebitUpdateInfo.t() | nil,
          star: Adyen.Management.V3.StarUpdateInfo.t() | nil,
          storeId: String.t() | nil,
          storeIds: [String.t()] | nil,
          visa: Adyen.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil
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
    :storeId,
    :storeIds,
    :visa
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accel: {Adyen.Management.V3.AccelUpdateInfo, :t},
      affirm: {Adyen.Management.V3.AffirmUpdateInfo, :t},
      bcmc: {Adyen.Management.V3.BcmcUpdateInfo, :t},
      carnet: {Adyen.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      cartesBancaires: {Adyen.Management.V3.CartesBancairesUpdateInfo, :t},
      countries: [:string],
      cup: {Adyen.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      currencies: [:string],
      customRoutingFlags: [:string],
      diners: {Adyen.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      discover: {Adyen.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      eft_directdebit_CA: {Adyen.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      eftpos_australia: {Adyen.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      enabled: :boolean,
      girocard: {Adyen.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      ideal: {Adyen.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      interac_card: {Adyen.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      jcb: {Adyen.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      maestro: {Adyen.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      maestro_usa: {Adyen.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      mc: {Adyen.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      nyce: {Adyen.Management.V3.NyceUpdateInfo, :t},
      paybybank_plaid: {Adyen.Management.V3.PayByBankPlaidUpdateInfo, :t},
      pulse: {Adyen.Management.V3.PulseUpdateInfo, :t},
      sepadirectdebit: {Adyen.Management.V3.SepaDirectDebitUpdateInfo, :t},
      star: {Adyen.Management.V3.StarUpdateInfo, :t},
      storeId: :string,
      storeIds: [:string],
      visa: {Adyen.Management.V3.GenericPmWithTdiUpdateInfo, :t}
    ]
  end
end
