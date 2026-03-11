defmodule Adyen.Payment.V68.CancelOrRefundRequest do
  @moduledoc """
  Provides struct and type for a CancelOrRefundRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          merchantAccount: String.t(),
          mpiData: Adyen.Payment.V68.ThreeDSecureData.t() | nil,
          originalMerchantReference: String.t() | nil,
          originalReference: String.t(),
          platformChargebackLogic: Adyen.Payment.V68.PlatformChargebackLogic.t() | nil,
          reference: String.t() | nil,
          tenderReference: String.t() | nil,
          uniqueTerminalId: String.t() | nil
        }

  defstruct [
    :additionalData,
    :merchantAccount,
    :mpiData,
    :originalMerchantReference,
    :originalReference,
    :platformChargebackLogic,
    :reference,
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
      mpiData: {Adyen.Payment.V68.ThreeDSecureData, :t},
      originalMerchantReference: :string,
      originalReference: :string,
      platformChargebackLogic: {Adyen.Payment.V68.PlatformChargebackLogic, :t},
      reference: :string,
      tenderReference: :string,
      uniqueTerminalId: :string
    ]
  end
end
