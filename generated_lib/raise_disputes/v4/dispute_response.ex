defmodule Adyen.RaiseDisputes.V4.DisputeResponse do
  @moduledoc """
  Provides struct and type for a DisputeResponse
  """

  @type t :: %__MODULE__{
          arn: String.t() | nil,
          description: String.t() | nil,
          disputedAmount: Adyen.RaiseDisputes.V4.Amount.t() | nil,
          duplicateInfo: Adyen.RaiseDisputes.V4.DuplicateInfo.t() | nil,
          fraudInfo: Adyen.RaiseDisputes.V4.FraudInfo.t() | nil,
          id: String.t() | nil,
          notDeliveredInfo: Adyen.RaiseDisputes.V4.NotDeliveredInfo.t() | nil,
          otherInfo: Adyen.RaiseDisputes.V4.OtherInfo.t() | nil,
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
      disputedAmount: {Adyen.RaiseDisputes.V4.Amount, :t},
      duplicateInfo: {Adyen.RaiseDisputes.V4.DuplicateInfo, :t},
      fraudInfo: {Adyen.RaiseDisputes.V4.FraudInfo, :t},
      id: :string,
      notDeliveredInfo: {Adyen.RaiseDisputes.V4.NotDeliveredInfo, :t},
      otherInfo: {Adyen.RaiseDisputes.V4.OtherInfo, :t},
      status: {:enum, ["draft", "submitted", "chargeback", "secondPresentment", "won", "closed"]},
      transactionId: :string,
      type: :string
    ]
  end
end
