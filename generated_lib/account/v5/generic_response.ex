defmodule Adyen.Account.V5.GenericResponse do
  @moduledoc """
  Provides struct and type for a GenericResponse
  """

  @type t :: %__MODULE__{
          invalidFields: [Adyen.Account.V5.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      invalidFields: [{Adyen.Account.V5.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
