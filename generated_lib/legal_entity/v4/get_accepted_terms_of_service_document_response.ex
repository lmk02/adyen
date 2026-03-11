defmodule Adyen.LegalEntity.V4.GetAcceptedTermsOfServiceDocumentResponse do
  @moduledoc """
  Provides struct and type for a GetAcceptedTermsOfServiceDocumentResponse
  """

  @type t :: %__MODULE__{
          document: String.t() | nil,
          id: String.t() | nil,
          termsOfServiceAcceptanceReference: String.t() | nil,
          termsOfServiceDocumentFormat: String.t() | nil
        }

  defstruct [:document, :id, :termsOfServiceAcceptanceReference, :termsOfServiceDocumentFormat]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      document: {:string, "byte"},
      id: :string,
      termsOfServiceAcceptanceReference: :string,
      termsOfServiceDocumentFormat: {:enum, ["JSON", "PDF", "TXT"]}
    ]
  end
end
