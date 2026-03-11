defmodule Adyen.Transfer.V4.RelayedAuthorisationData do
  @moduledoc """
  Provides struct and type for a RelayedAuthorisationData
  """

  @type t :: %__MODULE__{metadata: map | nil, reference: String.t() | nil}

  defstruct [:metadata, :reference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [metadata: :map, reference: :string]
  end
end
