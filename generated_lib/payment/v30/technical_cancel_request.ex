defmodule Adyen.Payment.V30.TechnicalCancelRequest do
  @moduledoc """
  Provides struct and type for a TechnicalCancelRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          merchantAccount: String.t(),
          modificationAmount: Adyen.Payment.V30.Amount.t() | nil,
          originalMerchantReference: String.t(),
          reference: String.t() | nil,
          tenderReference: String.t() | nil,
          uniqueTerminalId: String.t() | nil
        }

  defstruct [
    :additionalData,
    :merchantAccount,
    :modificationAmount,
    :originalMerchantReference,
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
      reference: :string,
      tenderReference: :string,
      uniqueTerminalId: :string
    ]
  end
end
