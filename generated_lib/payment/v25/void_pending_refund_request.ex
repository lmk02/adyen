defmodule Adyen.Payment.V25.VoidPendingRefundRequest do
  @moduledoc """
  Provides struct and type for a VoidPendingRefundRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          merchantAccount: String.t(),
          modificationAmount: Adyen.Payment.V25.Amount.t() | nil,
          originalReference: String.t() | nil,
          reference: String.t() | nil,
          tenderReference: String.t() | nil,
          uniqueTerminalId: String.t() | nil
        }

  defstruct [
    :additionalData,
    :merchantAccount,
    :modificationAmount,
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
      modificationAmount: {Adyen.Payment.V25.Amount, :t},
      originalReference: :string,
      reference: :string,
      tenderReference: :string,
      uniqueTerminalId: :string
    ]
  end
end
