defmodule Adyen.Payments.CancelRequest do
  @moduledoc """
  Provides struct and type for a CancelRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          merchantAccount: String.t(),
          mpiData: Adyen.Payments.ThreeDSecureData.t() | nil,
          originalMerchantReference: String.t() | nil,
          originalReference: String.t(),
          platformChargebackLogic: Adyen.Payments.PlatformChargebackLogic.t() | nil,
          reference: String.t() | nil,
          splits: [Adyen.Payments.Split.t()] | nil,
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
      mpiData: {Adyen.Payments.ThreeDSecureData, :t},
      originalMerchantReference: :string,
      originalReference: :string,
      platformChargebackLogic: {Adyen.Payments.PlatformChargebackLogic, :t},
      reference: :string,
      splits: [{Adyen.Payments.Split, :t}],
      tenderReference: :string,
      uniqueTerminalId: :string
    ]
  end
end
