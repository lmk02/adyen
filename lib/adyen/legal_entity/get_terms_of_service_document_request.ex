defmodule Adyen.LegalEntity.GetTermsOfServiceDocumentRequest do
  @moduledoc """
  Provides struct and type for a GetTermsOfServiceDocumentRequest
  """

  @type t :: %__MODULE__{
          language: String.t(),
          termsOfServiceDocumentFormat: String.t() | nil,
          type: String.t()
        }

  defstruct [:language, :termsOfServiceDocumentFormat, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      language: :string,
      termsOfServiceDocumentFormat: :string,
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
