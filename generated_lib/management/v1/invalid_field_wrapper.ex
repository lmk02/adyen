defmodule Adyen.Management.V1.InvalidFieldWrapper do
  @moduledoc """
  Provides struct and type for a InvalidFieldWrapper
  """

  @type t :: %__MODULE__{InvalidField: Adyen.Management.V1.InvalidField.t() | nil}

  defstruct [:InvalidField]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [InvalidField: {Adyen.Management.V1.InvalidField, :t}]
  end
end
