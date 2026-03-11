defmodule Adyen.Management.AdditionalSettings do
  @moduledoc """
  Provides struct and type for a AdditionalSettings
  """

  @type t :: %__MODULE__{includeEventCodes: [String.t()] | nil, properties: map | nil}

  defstruct [:includeEventCodes, :properties]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [includeEventCodes: [:string], properties: :map]
  end
end
