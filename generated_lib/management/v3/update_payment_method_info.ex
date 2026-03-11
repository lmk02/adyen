defmodule Adyen.Management.V3.UpdatePaymentMethodInfo do
  @moduledoc """
  Provides struct and type for a UpdatePaymentMethodInfo
  """

  @type t :: %__MODULE__{
          accel: Adyen.Management.V3.AccelInfo.t() | nil,
          bcmc: Adyen.Management.V3.BcmcInfo.t() | nil,
          cartesBancaires: Adyen.Management.V3.CartesBancairesInfo.t() | nil,
          countries: [String.t()] | nil,
          cup: Adyen.Management.V3.GenericPmWithTdiInfo.t() | nil,
          currencies: [String.t()] | nil,
          customRoutingFlags: [String.t()] | nil,
          diners: Adyen.Management.V3.GenericPmWithTdiInfo.t() | nil,
          discover: Adyen.Management.V3.GenericPmWithTdiInfo.t() | nil,
          eft_directdebit_CA: Adyen.Management.V3.GenericPmWithTdiInfo.t() | nil,
          eftpos_australia: Adyen.Management.V3.GenericPmWithTdiInfo.t() | nil,
          enabled: boolean | nil,
          girocard: Adyen.Management.V3.GenericPmWithTdiInfo.t() | nil,
          ideal: Adyen.Management.V3.GenericPmWithTdiInfo.t() | nil,
          interac_card: Adyen.Management.V3.GenericPmWithTdiInfo.t() | nil,
          jcb: Adyen.Management.V3.GenericPmWithTdiInfo.t() | nil,
          maestro: Adyen.Management.V3.GenericPmWithTdiInfo.t() | nil,
          maestro_usa: Adyen.Management.V3.GenericPmWithTdiInfo.t() | nil,
          mc: Adyen.Management.V3.GenericPmWithTdiInfo.t() | nil,
          nyce: Adyen.Management.V3.NyceInfo.t() | nil,
          paybybank_plaid: Adyen.Management.V3.PayByBankPlaidInfo.t() | nil,
          pulse: Adyen.Management.V3.PulseInfo.t() | nil,
          sepadirectdebit: Adyen.Management.V3.SepaDirectDebitInfo.t() | nil,
          star: Adyen.Management.V3.StarInfo.t() | nil,
          storeId: String.t() | nil,
          storeIds: [String.t()] | nil,
          visa: Adyen.Management.V3.GenericPmWithTdiInfo.t() | nil
        }

  defstruct [
    :accel,
    :bcmc,
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
      accel: {Adyen.Management.V3.AccelInfo, :t},
      bcmc: {Adyen.Management.V3.BcmcInfo, :t},
      cartesBancaires: {Adyen.Management.V3.CartesBancairesInfo, :t},
      countries: [:string],
      cup: {Adyen.Management.V3.GenericPmWithTdiInfo, :t},
      currencies: [:string],
      customRoutingFlags: [:string],
      diners: {Adyen.Management.V3.GenericPmWithTdiInfo, :t},
      discover: {Adyen.Management.V3.GenericPmWithTdiInfo, :t},
      eft_directdebit_CA: {Adyen.Management.V3.GenericPmWithTdiInfo, :t},
      eftpos_australia: {Adyen.Management.V3.GenericPmWithTdiInfo, :t},
      enabled: :boolean,
      girocard: {Adyen.Management.V3.GenericPmWithTdiInfo, :t},
      ideal: {Adyen.Management.V3.GenericPmWithTdiInfo, :t},
      interac_card: {Adyen.Management.V3.GenericPmWithTdiInfo, :t},
      jcb: {Adyen.Management.V3.GenericPmWithTdiInfo, :t},
      maestro: {Adyen.Management.V3.GenericPmWithTdiInfo, :t},
      maestro_usa: {Adyen.Management.V3.GenericPmWithTdiInfo, :t},
      mc: {Adyen.Management.V3.GenericPmWithTdiInfo, :t},
      nyce: {Adyen.Management.V3.NyceInfo, :t},
      paybybank_plaid: {Adyen.Management.V3.PayByBankPlaidInfo, :t},
      pulse: {Adyen.Management.V3.PulseInfo, :t},
      sepadirectdebit: {Adyen.Management.V3.SepaDirectDebitInfo, :t},
      star: {Adyen.Management.V3.StarInfo, :t},
      storeId: :string,
      storeIds: [:string],
      visa: {Adyen.Management.V3.GenericPmWithTdiInfo, :t}
    ]
  end
end
