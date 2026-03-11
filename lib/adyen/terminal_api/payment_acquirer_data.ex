defmodule Adyen.TerminalAPI.PaymentAcquirerData do
  @moduledoc """
  Provides struct and type for a PaymentAcquirerData
  """

  @type t :: %__MODULE__{
          AcquirerID: integer | nil,
          AcquirerPOIID: String.t(),
          AcquirerTransactionID: Adyen.TerminalAPI.TransactionIDType.t() | nil,
          ApprovalCode: String.t() | nil,
          HostReconciliationID: String.t() | nil,
          MerchantID: String.t()
        }

  defstruct [
    :AcquirerID,
    :AcquirerPOIID,
    :AcquirerTransactionID,
    :ApprovalCode,
    :HostReconciliationID,
    :MerchantID
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AcquirerID: :integer,
      AcquirerPOIID: :string,
      AcquirerTransactionID: {Adyen.TerminalAPI.TransactionIDType, :t},
      ApprovalCode: :string,
      HostReconciliationID: :string,
      MerchantID: :string
    ]
  end
end
