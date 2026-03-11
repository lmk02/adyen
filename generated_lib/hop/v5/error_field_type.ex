defmodule Adyen.Hop.V5.ErrorFieldType do
  @moduledoc """
  Provides struct and type for a ErrorFieldType
  """

  @type t :: %__MODULE__{
          errorCode: integer | nil,
          errorDescription: String.t() | nil,
          fieldType: Adyen.Hop.V5.FieldType.t() | nil
        }

  defstruct [:errorCode, :errorDescription, :fieldType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      errorCode: {:integer, "int32"},
      errorDescription: :string,
      fieldType: {Adyen.Hop.V5.FieldType, :t}
    ]
  end
end
