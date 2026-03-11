defmodule Adyen.Payment.V25.CancelRequest do
  @moduledoc """
  Provides struct and type for a CancelRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          merchantAccount: String.t(),
          originalReference: String.t(),
          reference: String.t() | nil,
          tenderReference: String.t() | nil,
          uniqueTerminalId: String.t() | nil
        }

  defstruct [
    :additionalData,
    :merchantAccount,
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
      originalReference: :string,
      reference: :string,
      tenderReference: :string,
      uniqueTerminalId: :string
    ]
  end
end
