defmodule Adyen.Hop.GetPciUrlResponse do
  @moduledoc """
  Provides struct and type for a GetPciUrlResponse
  """

  @type t :: %__MODULE__{
          invalidFields: [Adyen.Hop.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          redirectUrl: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:invalidFields, :pspReference, :redirectUrl, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      invalidFields: [{Adyen.Hop.ErrorFieldType, :t}],
      pspReference: :string,
      redirectUrl: :string,
      resultCode: :string
    ]
  end
end
