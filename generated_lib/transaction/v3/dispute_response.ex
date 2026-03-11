defmodule Adyen.Transaction.V3.DisputeResponse do
  @moduledoc """
  Provides struct and type for a DisputeResponse
  """

  @type t :: %__MODULE__{
          arn: String.t() | nil,
          description: String.t() | nil,
          disputedAmount: Adyen.Transaction.V3.Amount.t() | nil,
          duplicateInfo: Adyen.Transaction.V3.DuplicateInfo.t() | nil,
          fraudInfo: Adyen.Transaction.V3.FraudInfo.t() | nil,
          id: String.t() | nil,
          notDeliveredInfo: Adyen.Transaction.V3.NotDeliveredInfo.t() | nil,
          otherInfo: Adyen.Transaction.V3.OtherInfo.t() | nil,
          status: String.t() | nil,
          transactionId: String.t(),
          type: String.t()
        }

  defstruct [
    :arn,
    :description,
    :disputedAmount,
    :duplicateInfo,
    :fraudInfo,
    :id,
    :notDeliveredInfo,
    :otherInfo,
    :status,
    :transactionId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      arn: :string,
      description: :string,
      disputedAmount: {Adyen.Transaction.V3.Amount, :t},
      duplicateInfo: {Adyen.Transaction.V3.DuplicateInfo, :t},
      fraudInfo: {Adyen.Transaction.V3.FraudInfo, :t},
      id: :string,
      notDeliveredInfo: {Adyen.Transaction.V3.NotDeliveredInfo, :t},
      otherInfo: {Adyen.Transaction.V3.OtherInfo, :t},
      status: {:enum, ["draft", "submitted", "chargeback", "secondPresentment", "won", "closed"]},
      transactionId: :string,
      type: :string
    ]
  end
end
