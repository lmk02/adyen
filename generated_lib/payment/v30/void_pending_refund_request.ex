defmodule Adyen.Payment.V30.VoidPendingRefundRequest do
  @moduledoc """
  Provides struct and type for a VoidPendingRefundRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          merchantAccount: String.t(),
          modificationAmount: Adyen.Payment.V30.Amount.t() | nil,
          originalMerchantReference: String.t() | nil,
          originalReference: String.t() | nil,
          reference: String.t() | nil,
          tenderReference: String.t() | nil,
          uniqueTerminalId: String.t() | nil
        }

  defstruct [
    :additionalData,
    :merchantAccount,
    :modificationAmount,
    :originalMerchantReference,
    :originalReference,
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
      modificationAmount: {Adyen.Payment.V30.Amount, :t},
      originalMerchantReference: :string,
      originalReference: :string,
      reference: :string,
      tenderReference: :string,
      uniqueTerminalId: :string
    ]
  end
end
