defmodule Adyen.Transfers.IssuedCard do
  @moduledoc """
  Provides struct and type for a IssuedCard
  """

  @type t :: %__MODULE__{
          authorisationType: String.t() | nil,
          panEntryMode: String.t() | nil,
          processingType: String.t() | nil,
          relayedAuthorisationData: Adyen.Transfers.RelayedAuthorisationData.t() | nil,
          schemeTraceId: String.t() | nil,
          schemeUniqueTransactionId: String.t() | nil,
          threeDSecure: Adyen.Transfers.ThreeDSecure.t() | nil,
          type: String.t() | nil,
          validationFacts: [Adyen.Transfers.TransferNotificationValidationFact.t()] | nil
        }

  defstruct [
    :authorisationType,
    :panEntryMode,
    :processingType,
    :relayedAuthorisationData,
    :schemeTraceId,
    :schemeUniqueTransactionId,
    :threeDSecure,
    :type,
    :validationFacts
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authorisationType: :string,
      panEntryMode:
        {:enum, ["chip", "cof", "contactless", "ecommerce", "magstripe", "manual", "token"]},
      processingType:
        {:enum,
         [
           "atmWithdraw",
           "balanceInquiry",
           "ecommerce",
           "moto",
           "pos",
           "purchaseWithCashback",
           "recurring",
           "token"
         ]},
      relayedAuthorisationData: {Adyen.Transfers.RelayedAuthorisationData, :t},
      schemeTraceId: :string,
      schemeUniqueTransactionId: :string,
      threeDSecure: {Adyen.Transfers.ThreeDSecure, :t},
      type: {:const, "issuedCard"},
      validationFacts: [{Adyen.Transfers.TransferNotificationValidationFact, :t}]
    ]
  end
end
