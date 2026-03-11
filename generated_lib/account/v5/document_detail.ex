defmodule Adyen.Account.V5.DocumentDetail do
  @moduledoc """
  Provides struct and type for a DocumentDetail
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          bankAccountUUID: String.t() | nil,
          description: String.t() | nil,
          documentType: String.t(),
          filename: String.t() | nil,
          shareholderCode: String.t() | nil,
          signatoryCode: String.t() | nil
        }

  defstruct [
    :accountHolderCode,
    :bankAccountUUID,
    :description,
    :documentType,
    :filename,
    :shareholderCode,
    :signatoryCode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      bankAccountUUID: :string,
      description: :string,
      documentType:
        {:enum,
         [
           "BANK_STATEMENT",
           "BSN",
           "COMPANY_REGISTRATION_SCREENING",
           "DRIVING_LICENCE",
           "DRIVING_LICENCE_BACK",
           "DRIVING_LICENCE_FRONT",
           "ID_CARD",
           "ID_CARD_BACK",
           "ID_CARD_FRONT",
           "PASSPORT",
           "PROOF_OF_RESIDENCY",
           "SSN",
           "SUPPORTING_DOCUMENTS"
         ]},
      filename: :string,
      shareholderCode: :string,
      signatoryCode: :string
    ]
  end
end
