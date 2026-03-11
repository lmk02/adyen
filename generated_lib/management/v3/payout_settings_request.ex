defmodule Adyen.Management.V3.PayoutSettingsRequest do
  @moduledoc """
  Provides struct and type for a PayoutSettingsRequest
  """

  @type t :: %__MODULE__{
          enabled: boolean | nil,
          enabledFromDate: String.t() | nil,
          transferInstrumentId: String.t()
        }

  defstruct [:enabled, :enabledFromDate, :transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [enabled: :boolean, enabledFromDate: :string, transferInstrumentId: :string]
  end
end
