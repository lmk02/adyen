defmodule Adyen.Management.UpdatePaymentMethodInfo do
  @moduledoc """
  Provides struct and type for a UpdatePaymentMethodInfo
  """

  @type t :: %__MODULE__{
          accel: Adyen.Management.AccelInfo.t() | nil,
          bcmc: Adyen.Management.BcmcInfo.t() | nil,
          cartesBancaires: Adyen.Management.CartesBancairesInfo.t() | nil,
          countries: [String.t()] | nil,
          cup: Adyen.Management.GenericPmWithTdiInfo.t() | nil,
          currencies: [String.t()] | nil,
          customRoutingFlags: [String.t()] | nil,
          diners: Adyen.Management.GenericPmWithTdiInfo.t() | nil,
          discover: Adyen.Management.GenericPmWithTdiInfo.t() | nil,
          eft_directdebit_CA: Adyen.Management.GenericPmWithTdiInfo.t() | nil,
          eftpos_australia: Adyen.Management.GenericPmWithTdiInfo.t() | nil,
          enabled: boolean | nil,
          girocard: Adyen.Management.GenericPmWithTdiInfo.t() | nil,
          ideal: Adyen.Management.GenericPmWithTdiInfo.t() | nil,
          interac_card: Adyen.Management.GenericPmWithTdiInfo.t() | nil,
          jcb: Adyen.Management.GenericPmWithTdiInfo.t() | nil,
          maestro: Adyen.Management.GenericPmWithTdiInfo.t() | nil,
          maestro_usa: Adyen.Management.GenericPmWithTdiInfo.t() | nil,
          mc: Adyen.Management.GenericPmWithTdiInfo.t() | nil,
          nyce: Adyen.Management.NyceInfo.t() | nil,
          paybybank_plaid: Adyen.Management.PayByBankPlaidInfo.t() | nil,
          pulse: Adyen.Management.PulseInfo.t() | nil,
          sepadirectdebit: Adyen.Management.SepaDirectDebitInfo.t() | nil,
          star: Adyen.Management.StarInfo.t() | nil,
          storeId: String.t() | nil,
          storeIds: [String.t()] | nil,
          visa: Adyen.Management.GenericPmWithTdiInfo.t() | nil
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
      accel: {Adyen.Management.AccelInfo, :t},
      bcmc: {Adyen.Management.BcmcInfo, :t},
      cartesBancaires: {Adyen.Management.CartesBancairesInfo, :t},
      countries: [:string],
      cup: {Adyen.Management.GenericPmWithTdiInfo, :t},
      currencies: [:string],
      customRoutingFlags: [:string],
      diners: {Adyen.Management.GenericPmWithTdiInfo, :t},
      discover: {Adyen.Management.GenericPmWithTdiInfo, :t},
      eft_directdebit_CA: {Adyen.Management.GenericPmWithTdiInfo, :t},
      eftpos_australia: {Adyen.Management.GenericPmWithTdiInfo, :t},
      enabled: :boolean,
      girocard: {Adyen.Management.GenericPmWithTdiInfo, :t},
      ideal: {Adyen.Management.GenericPmWithTdiInfo, :t},
      interac_card: {Adyen.Management.GenericPmWithTdiInfo, :t},
      jcb: {Adyen.Management.GenericPmWithTdiInfo, :t},
      maestro: {Adyen.Management.GenericPmWithTdiInfo, :t},
      maestro_usa: {Adyen.Management.GenericPmWithTdiInfo, :t},
      mc: {Adyen.Management.GenericPmWithTdiInfo, :t},
      nyce: {Adyen.Management.NyceInfo, :t},
      paybybank_plaid: {Adyen.Management.PayByBankPlaidInfo, :t},
      pulse: {Adyen.Management.PulseInfo, :t},
      sepadirectdebit: {Adyen.Management.SepaDirectDebitInfo, :t},
      star: {Adyen.Management.StarInfo, :t},
      storeId: :string,
      storeIds: [:string],
      visa: {Adyen.Management.GenericPmWithTdiInfo, :t}
    ]
  end
end
