defmodule Adyen.Management.UpdatePayoutSettingsRequest do
  @moduledoc """
  Provides struct and type for a UpdatePayoutSettingsRequest
  """

  @type t :: %__MODULE__{enabled: boolean | nil}

  defstruct [:enabled]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [enabled: :boolean]
  end
end
