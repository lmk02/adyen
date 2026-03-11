defmodule Adyen.Account.V3.GetTaxFormResponse do
  @moduledoc """
  Provides struct and type for a GetTaxFormResponse
  """

  @type t :: %__MODULE__{
          content: String.t() | nil,
          contentType: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [:content, :contentType, :pspReference, :resultCode, :submittedAsync]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      content: {:string, "byte"},
      contentType: :string,
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean
    ]
  end
end
