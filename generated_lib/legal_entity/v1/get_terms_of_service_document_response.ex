defmodule Adyen.LegalEntity.V1.GetTermsOfServiceDocumentResponse do
  @moduledoc """
  Provides struct and type for a GetTermsOfServiceDocumentResponse
  """

  @type t :: %__MODULE__{
          document: String.t() | nil,
          id: String.t() | nil,
          language: String.t() | nil,
          termsOfServiceDocumentFormat: String.t() | nil,
          termsOfServiceDocumentId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :document,
    :id,
    :language,
    :termsOfServiceDocumentFormat,
    :termsOfServiceDocumentId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      document: {:string, "byte"},
      id: :string,
      language: :string,
      termsOfServiceDocumentFormat: :string,
      termsOfServiceDocumentId: :string,
      type:
        {:enum,
         [
           "adyenAccount",
           "adyenCapital",
           "adyenCard",
           "adyenChargeCard",
           "adyenForPlatformsAdvanced",
           "adyenForPlatformsManage",
           "adyenFranchisee",
           "adyenIssuing",
           "adyenPccr",
           "kycOnInvite"
         ]}
    ]
  end
end
