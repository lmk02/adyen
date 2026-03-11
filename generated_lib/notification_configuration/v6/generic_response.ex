defmodule Adyen.NotificationConfiguration.V6.GenericResponse do
  @moduledoc """
  Provides struct and type for a GenericResponse
  """

  @type t :: %__MODULE__{
          invalidFields: [Adyen.NotificationConfiguration.V6.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      invalidFields: [{Adyen.NotificationConfiguration.V6.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
