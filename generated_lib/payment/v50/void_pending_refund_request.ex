defmodule Adyen.Payment.V50.VoidPendingRefundRequest do
  @moduledoc """
  Provides struct and type for a VoidPendingRefundRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          merchantAccount: String.t(),
          modificationAmount: Adyen.Payment.V50.Amount.t() | nil,
          mpiData: Adyen.Payment.V50.ThreeDSecureData.t() | nil,
          originalMerchantReference: String.t() | nil,
          originalReference: String.t() | nil,
          reference: String.t() | nil,
          splits: [Adyen.Payment.V50.Split.t()] | nil,
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
      modificationAmount: {Adyen.Payment.V50.Amount, :t},
      mpiData: {Adyen.Payment.V50.ThreeDSecureData, :t},
      originalMerchantReference: :string,
      originalReference: :string,
      reference: :string,
      splits: [{Adyen.Payment.V50.Split, :t}],
      tenderReference: :string,
      uniqueTerminalId: :string
    ]
  end
end
