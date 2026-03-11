defmodule Adyen.Account.V4.FieldTypeWrapper do
  @moduledoc """
  Provides struct and type for a FieldTypeWrapper
  """

  @type t :: %__MODULE__{FieldType: Adyen.Account.V4.FieldType.t() | nil}

  defstruct [:FieldType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [FieldType: {Adyen.Account.V4.FieldType, :t}]
  end
end
