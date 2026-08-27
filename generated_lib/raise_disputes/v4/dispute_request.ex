defmodule Adyen.RaiseDisputes.V4.DisputeRequest do
  @moduledoc """
  Provides struct and type for a DisputeRequest
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          disputedAmount: Adyen.RaiseDisputes.V4.Amount.t() | nil,
          duplicateInfo: Adyen.RaiseDisputes.V4.DuplicateInfo.t() | nil,
          fraudInfo: Adyen.RaiseDisputes.V4.FraudInfo.t() | nil,
          notDeliveredInfo: Adyen.RaiseDisputes.V4.NotDeliveredInfo.t() | nil,
          otherInfo: Adyen.RaiseDisputes.V4.OtherInfo.t() | nil,
          status: String.t() | nil,
          transactionId: String.t(),
          type: String.t()
        }

  defstruct [
    :description,
    :disputedAmount,
    :duplicateInfo,
    :fraudInfo,
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
      description: :string,
      disputedAmount: {Adyen.RaiseDisputes.V4.Amount, :t},
      duplicateInfo: {Adyen.RaiseDisputes.V4.DuplicateInfo, :t},
      fraudInfo: {Adyen.RaiseDisputes.V4.FraudInfo, :t},
      notDeliveredInfo: {Adyen.RaiseDisputes.V4.NotDeliveredInfo, :t},
      otherInfo: {Adyen.RaiseDisputes.V4.OtherInfo, :t},
      status: {:enum, ["draft", "submitted", "chargeback", "secondPresentment", "won", "closed"]},
      transactionId: :string,
      type: :string
    ]
  end
end
