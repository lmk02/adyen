defmodule Adyen.Transfer.V4.InternalReviewTrackingData do
  @moduledoc """
  Provides struct and type for a InternalReviewTrackingData
  """

  @type t :: %__MODULE__{reason: String.t() | nil, status: String.t(), type: String.t()}

  defstruct [:reason, :status, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      reason: {:const, "refusedForRegulatoryReasons"},
      status: {:enum, ["pending", "failed"]},
      type: {:const, "internalReview"}
    ]
  end
end
