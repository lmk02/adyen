defmodule Adyen.LegalEntity.V3.AcceptTermsOfServiceResponse do
  @moduledoc """
  Provides struct and type for a AcceptTermsOfServiceResponse
  """

  @type t :: %__MODULE__{
          acceptedBy: String.t() | nil,
          id: String.t() | nil,
          ipAddress: String.t() | nil,
          language: String.t() | nil,
          termsOfServiceDocumentId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:acceptedBy, :id, :ipAddress, :language, :termsOfServiceDocumentId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      acceptedBy: :string,
      id: :string,
      ipAddress: :string,
      language: :string,
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
