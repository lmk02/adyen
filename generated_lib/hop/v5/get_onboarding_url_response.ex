defmodule Adyen.Hop.V5.GetOnboardingUrlResponse do
  @moduledoc """
  Provides struct and type for a GetOnboardingUrlResponse
  """

  @type t :: %__MODULE__{
          invalidFields: [Adyen.Hop.V5.ErrorFieldType.t()] | nil,
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
      invalidFields: [{Adyen.Hop.V5.ErrorFieldType, :t}],
      pspReference: :string,
      redirectUrl: :string,
      resultCode: :string
    ]
  end
end
