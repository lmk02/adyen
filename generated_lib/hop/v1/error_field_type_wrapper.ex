defmodule Adyen.Hop.V1.ErrorFieldTypeWrapper do
  @moduledoc """
  Provides struct and type for a ErrorFieldTypeWrapper
  """

  @type t :: %__MODULE__{ErrorFieldType: Adyen.Hop.V1.ErrorFieldType.t() | nil}

  defstruct [:ErrorFieldType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [ErrorFieldType: {Adyen.Hop.V1.ErrorFieldType, :t}]
  end
end
