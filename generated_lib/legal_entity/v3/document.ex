defmodule Adyen.LegalEntity.V3.Document do
  @moduledoc """
  Provides struct and type for a Document
  """

  @type t :: %__MODULE__{
          attachment: Adyen.LegalEntity.V3.Attachment.t() | nil,
          attachments: [Adyen.LegalEntity.V3.Attachment.t()] | nil,
          creationDate: DateTime.t() | nil,
          description: String.t(),
          expiryDate: String.t() | nil,
          fileName: String.t() | nil,
          id: String.t() | nil,
          issuerCountry: String.t() | nil,
          issuerState: String.t() | nil,
          modificationDate: DateTime.t() | nil,
          number: String.t() | nil,
          owner: Adyen.LegalEntity.V3.OwnerEntity.t() | nil,
          type: String.t()
        }

  defstruct [
    :attachment,
    :attachments,
    :creationDate,
    :description,
    :expiryDate,
    :fileName,
    :id,
    :issuerCountry,
    :issuerState,
    :modificationDate,
    :number,
    :owner,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      attachment: {Adyen.LegalEntity.V3.Attachment, :t},
      attachments: [{Adyen.LegalEntity.V3.Attachment, :t}],
      creationDate: {:string, "date-time"},
      description: :string,
      expiryDate: :string,
      fileName: :string,
      id: :string,
      issuerCountry: :string,
      issuerState: :string,
      modificationDate: {:string, "date-time"},
      number: :string,
      owner: {Adyen.LegalEntity.V3.OwnerEntity, :t},
      type:
        {:enum,
         [
           "bankStatement",
           "driversLicense",
           "identityCard",
           "nationalIdNumber",
           "passport",
           "proofOfAddress",
           "proofOfNationalIdNumber",
           "proofOfResidency",
           "registrationDocument",
           "vatDocument",
           "proofOfOrganizationTaxInfo",
           "proofOfIndividualTaxId",
           "proofOfOwnership",
           "proofOfSignatory",
           "liveSelfie",
           "proofOfIndustry",
           "constitutionalDocument",
           "proofOfFundingOrWealthSource",
           "proofOfRelationship"
         ]}
    ]
  end
end
