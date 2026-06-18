defmodule Adyen.BalancePlatform.V2.PayoutScheduleExecutionDetails do
  @moduledoc """
  Provides struct and type for a PayoutScheduleExecutionDetails
  """

  @type t :: %__MODULE__{
          reason: String.t() | nil,
          reasonCode: String.t() | nil,
          transferId: String.t() | nil
        }

  defstruct [:reason, :reasonCode, :transferId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [reason: :string, reasonCode: :string, transferId: :string]
  end
end
