defmodule Adyen.Account.V5.GetTaxFormResponse do
  @moduledoc """
  Provides struct and type for a GetTaxFormResponse
  """

  @type t :: %__MODULE__{
          content: String.t() | nil,
          contentType: String.t() | nil,
          invalidFields: [Adyen.Account.V5.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:content, :contentType, :invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      content: {:string, "byte"},
      contentType: :string,
      invalidFields: [{Adyen.Account.V5.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
