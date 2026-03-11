defmodule Adyen.BalancePlatform.V2.PlatformPaymentConfiguration do
  @moduledoc """
  Provides struct and type for a PlatformPaymentConfiguration
  """

  @type t :: %__MODULE__{salesDayClosingTime: Time.t() | nil, settlementDelayDays: integer | nil}

  defstruct [:salesDayClosingTime, :settlementDelayDays]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [salesDayClosingTime: {:string, "time"}, settlementDelayDays: {:integer, "int32"}]
  end
end
