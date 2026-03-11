defmodule Adyen.Transfer.V4.IssuedCard do
  @moduledoc """
  Provides struct and type for a IssuedCard
  """

  @type t :: %__MODULE__{
          authorisationType: String.t() | nil,
          panEntryMode: String.t() | nil,
          processingType: String.t() | nil,
          relayedAuthorisationData: Adyen.Transfer.V4.RelayedAuthorisationData.t() | nil,
          schemeTraceId: String.t() | nil,
          schemeUniqueTransactionId: String.t() | nil,
          threeDSecure: Adyen.Transfer.V4.ThreeDSecure.t() | nil,
          type: String.t() | nil,
          validationFacts: [Adyen.Transfer.V4.TransferNotificationValidationFact.t()] | nil
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
      relayedAuthorisationData: {Adyen.Transfer.V4.RelayedAuthorisationData, :t},
      schemeTraceId: :string,
      schemeUniqueTransactionId: :string,
      threeDSecure: {Adyen.Transfer.V4.ThreeDSecure, :t},
      type: {:const, "issuedCard"},
      validationFacts: [{Adyen.Transfer.V4.TransferNotificationValidationFact, :t}]
    ]
  end
end
