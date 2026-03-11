defmodule Adyen.Payment.V68.TechnicalCancelRequest do
  @moduledoc """
  Provides struct and type for a TechnicalCancelRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          merchantAccount: String.t(),
          modificationAmount: Adyen.Payment.V68.Amount.t() | nil,
          mpiData: Adyen.Payment.V68.ThreeDSecureData.t() | nil,
          originalMerchantReference: String.t(),
          platformChargebackLogic: Adyen.Payment.V68.PlatformChargebackLogic.t() | nil,
          reference: String.t() | nil,
          splits: [Adyen.Payment.V68.Split.t()] | nil,
          tenderReference: String.t() | nil,
          uniqueTerminalId: String.t() | nil
        }

  defstruct [
    :additionalData,
    :merchantAccount,
    :modificationAmount,
    :mpiData,
    :originalMerchantReference,
    :platformChargebackLogic,
    :reference,
    :splits,
    :tenderReference,
    :uniqueTerminalId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      merchantAccount: :string,
      modificationAmount: {Adyen.Payment.V68.Amount, :t},
      mpiData: {Adyen.Payment.V68.ThreeDSecureData, :t},
      originalMerchantReference: :string,
      platformChargebackLogic: {Adyen.Payment.V68.PlatformChargebackLogic, :t},
      reference: :string,
      splits: [{Adyen.Payment.V68.Split, :t}],
      tenderReference: :string,
      uniqueTerminalId: :string
    ]
  end
end
