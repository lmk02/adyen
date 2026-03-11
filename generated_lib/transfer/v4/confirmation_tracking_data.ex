defmodule Adyen.Transfer.V4.ConfirmationTrackingData do
  @moduledoc """
  Provides struct and type for a ConfirmationTrackingData
  """

  @type t :: %__MODULE__{status: String.t(), type: String.t()}

  defstruct [:status, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [status: {:enum, ["credited", "accepted"]}, type: {:const, "confirmation"}]
  end
end
