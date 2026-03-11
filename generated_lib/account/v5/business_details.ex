defmodule Adyen.Account.V5.BusinessDetails do
  @moduledoc """
  Provides struct and type for a BusinessDetails
  """

  @type t :: %__MODULE__{
          doingBusinessAs: String.t() | nil,
          legalBusinessName: String.t() | nil,
          listedUltimateParentCompany: [Adyen.Account.V5.UltimateParentCompany.t()] | nil,
          registrationNumber: String.t() | nil,
          shareholders: [Adyen.Account.V5.ShareholderContact.t()] | nil,
          signatories: [Adyen.Account.V5.SignatoryContact.t()] | nil,
          taxId: String.t() | nil
        }

  defstruct [
    :doingBusinessAs,
    :legalBusinessName,
    :listedUltimateParentCompany,
    :registrationNumber,
    :shareholders,
    :signatories,
    :taxId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      doingBusinessAs: :string,
      legalBusinessName: :string,
      listedUltimateParentCompany: [{Adyen.Account.V5.UltimateParentCompany, :t}],
      registrationNumber: :string,
      shareholders: [{Adyen.Account.V5.ShareholderContact, :t}],
      signatories: [{Adyen.Account.V5.SignatoryContact, :t}],
      taxId: :string
    ]
  end
end
