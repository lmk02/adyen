defmodule Adyen.BalancePlatform.V2.PinChangeResponse do
  @moduledoc """
  Provides struct and type for a PinChangeResponse
  """

  @type t :: %__MODULE__{status: String.t()}

  defstruct [:status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [status: {:enum, ["completed", "pending", "unavailable"]}]
  end
end
