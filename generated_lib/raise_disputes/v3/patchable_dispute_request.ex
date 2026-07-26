defmodule Adyen.RaiseDisputes.V3.PatchableDisputeRequest do
  @moduledoc """
  Provides struct and type for a PatchableDisputeRequest
  """

  @type t :: %__MODULE__{
          duplicateInfo: Adyen.RaiseDisputes.V3.PatchableDuplicateInfo.t() | nil,
          fraudInfo: Adyen.RaiseDisputes.V3.PatchableFraudInfo.t() | nil,
          notDeliveredInfo: Adyen.RaiseDisputes.V3.PatchableNotDeliveredInfo.t() | nil,
          otherInfo: Adyen.RaiseDisputes.V3.PatchableOtherInfo.t() | nil,
          status: String.t() | nil
        }

  defstruct [:duplicateInfo, :fraudInfo, :notDeliveredInfo, :otherInfo, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      duplicateInfo: {:union, [{Adyen.RaiseDisputes.V3.PatchableDuplicateInfo, :t}, :null]},
      fraudInfo: {:union, [{Adyen.RaiseDisputes.V3.PatchableFraudInfo, :t}, :null]},
      notDeliveredInfo: {:union, [{Adyen.RaiseDisputes.V3.PatchableNotDeliveredInfo, :t}, :null]},
      otherInfo: {:union, [{Adyen.RaiseDisputes.V3.PatchableOtherInfo, :t}, :null]},
      status:
        {:union,
         [
           {:enum, ["draft", "submitted", "chargeback", "secondPresentment", "won", "closed"]},
           :null
         ]}
    ]
  end
end
