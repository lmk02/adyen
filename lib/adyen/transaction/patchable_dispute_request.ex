defmodule Adyen.Transaction.PatchableDisputeRequest do
  @moduledoc """
  Provides struct and type for a PatchableDisputeRequest
  """

  @type t :: %__MODULE__{
          duplicateInfo: Adyen.Transaction.PatchableDuplicateInfo.t() | nil,
          fraudInfo: Adyen.Transaction.PatchableFraudInfo.t() | nil,
          notDeliveredInfo: Adyen.Transaction.PatchableNotDeliveredInfo.t() | nil,
          otherInfo: Adyen.Transaction.PatchableOtherInfo.t() | nil,
          status: String.t() | nil
        }

  defstruct [:duplicateInfo, :fraudInfo, :notDeliveredInfo, :otherInfo, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      duplicateInfo: {:union, [{Adyen.Transaction.PatchableDuplicateInfo, :t}, :null]},
      fraudInfo: {:union, [{Adyen.Transaction.PatchableFraudInfo, :t}, :null]},
      notDeliveredInfo: {:union, [{Adyen.Transaction.PatchableNotDeliveredInfo, :t}, :null]},
      otherInfo: {:union, [{Adyen.Transaction.PatchableOtherInfo, :t}, :null]},
      status:
        {:union,
         [
           {:enum, ["draft", "submitted", "chargeback", "secondPresentment", "won", "closed"]},
           :null
         ]}
    ]
  end
end
