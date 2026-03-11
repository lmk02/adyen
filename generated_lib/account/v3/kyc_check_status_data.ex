defmodule Adyen.Account.V3.KYCCheckStatusData do
  @moduledoc """
  Provides struct and type for a KYCCheckStatusData
  """

  @type t :: %__MODULE__{
          requiredFields: [String.t()] | nil,
          status: String.t(),
          summary: Adyen.Account.V3.KYCCheckSummary.t() | nil,
          type: String.t()
        }

  defstruct [:requiredFields, :status, :summary, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      requiredFields: [:string],
      status:
        {:enum,
         [
           "AWAITING_DATA",
           "DATA_PROVIDED",
           "FAILED",
           "INVALID_DATA",
           "PASSED",
           "PENDING",
           "PENDING_REVIEW",
           "RETRY_LIMIT_REACHED",
           "UNCHECKED"
         ]},
      summary: {Adyen.Account.V3.KYCCheckSummary, :t},
      type:
        {:enum,
         [
           "BANK_ACCOUNT_VERIFICATION",
           "CARD_VERIFICATION",
           "COMPANY_VERIFICATION",
           "IDENTITY_VERIFICATION",
           "LEGAL_ARRANGEMENT_VERIFICATION",
           "NONPROFIT_VERIFICATION",
           "PASSPORT_VERIFICATION",
           "PAYOUT_METHOD_VERIFICATION",
           "PCI_VERIFICATION"
         ]}
    ]
  end
end
