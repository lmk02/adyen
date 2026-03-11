defmodule Adyen.Payment.V68.RefundRequest do
  @moduledoc """
  Provides struct and type for a RefundRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          merchantAccount: String.t(),
          modificationAmount: Adyen.Payment.V68.Amount.t(),
          mpiData: Adyen.Payment.V68.ThreeDSecureData.t() | nil,
          originalMerchantReference: String.t() | nil,
          originalReference: String.t(),
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
    :originalReference,
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
      originalReference: :string,
      platformChargebackLogic: {Adyen.Payment.V68.PlatformChargebackLogic, :t},
      reference: :string,
      splits: [{Adyen.Payment.V68.Split, :t}],
      tenderReference: :string,
      uniqueTerminalId: :string
    ]
  end
end
