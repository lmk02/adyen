defmodule Adyen.Hop.V1.GetPciUrlResponse do
  @moduledoc """
  Provides struct and type for a GetPciUrlResponse
  """

  @type t :: %__MODULE__{
          invalidFields: [Adyen.Hop.V1.ErrorFieldTypeWrapper.t()] | nil,
          pspReference: String.t() | nil,
          redirectUrl: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [:invalidFields, :pspReference, :redirectUrl, :resultCode, :submittedAsync]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      invalidFields: [{Adyen.Hop.V1.ErrorFieldTypeWrapper, :t}],
      pspReference: :string,
      redirectUrl: :string,
      resultCode: :string,
      submittedAsync: :boolean
    ]
  end
end
