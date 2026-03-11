defmodule Adyen.Management.V1.AdditionalSettingsResponse do
  @moduledoc """
  Provides struct and type for a AdditionalSettingsResponse
  """

  @type t :: %__MODULE__{
          excludeEventCodes: [String.t()] | nil,
          includeEventCodes: [String.t()] | nil,
          properties: map | nil
        }

  defstruct [:excludeEventCodes, :includeEventCodes, :properties]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [excludeEventCodes: [:string], includeEventCodes: [:string], properties: :map]
  end
end
