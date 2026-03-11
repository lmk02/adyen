defmodule Adyen.Payment.V52.CancelRequest do
  @moduledoc """
  Provides struct and type for a CancelRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          merchantAccount: String.t(),
          mpiData: Adyen.Payment.V52.ThreeDSecureData.t() | nil,
          originalMerchantReference: String.t() | nil,
          originalReference: String.t(),
          reference: String.t() | nil,
          splits: [Adyen.Payment.V52.Split.t()] | nil,
          tenderReference: String.t() | nil,
          uniqueTerminalId: String.t() | nil
        }

  defstruct [
    :additionalData,
    :merchantAccount,
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
      mpiData: {Adyen.Payment.V52.ThreeDSecureData, :t},
      originalMerchantReference: :string,
      originalReference: :string,
      reference: :string,
      splits: [{Adyen.Payment.V52.Split, :t}],
      tenderReference: :string,
      uniqueTerminalId: :string
    ]
  end
end
