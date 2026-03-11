defmodule Adyen.Management.V1.PayoutSettingsResponse do
  @moduledoc """
  Provides struct and type for a PayoutSettingsResponse
  """

  @type t :: %__MODULE__{data: [Adyen.Management.V1.PayoutSettings.t()] | nil}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{Adyen.Management.V1.PayoutSettings, :t}]]
  end
end
