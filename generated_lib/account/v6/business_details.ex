defmodule Adyen.Account.V6.BusinessDetails do
  @moduledoc """
  Provides struct and type for a BusinessDetails
  """

  @type t :: %__MODULE__{
          doingBusinessAs: String.t() | nil,
          legalBusinessName: String.t() | nil,
          listedUltimateParentCompany: [Adyen.Account.V6.UltimateParentCompany.t()] | nil,
          registrationNumber: String.t() | nil,
          shareholders: [Adyen.Account.V6.ShareholderContact.t()] | nil,
          signatories: [Adyen.Account.V6.SignatoryContact.t()] | nil,
          stockExchange: String.t() | nil,
          stockNumber: String.t() | nil,
          stockTicker: String.t() | nil,
          taxId: String.t() | nil
        }

  defstruct [
    :doingBusinessAs,
    :legalBusinessName,
    :listedUltimateParentCompany,
    :registrationNumber,
    :shareholders,
    :signatories,
    :stockExchange,
    :stockNumber,
    :stockTicker,
    :taxId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      doingBusinessAs: :string,
      legalBusinessName: :string,
      listedUltimateParentCompany: [{Adyen.Account.V6.UltimateParentCompany, :t}],
      registrationNumber: :string,
      shareholders: [{Adyen.Account.V6.ShareholderContact, :t}],
      signatories: [{Adyen.Account.V6.SignatoryContact, :t}],
      stockExchange: :string,
      stockNumber: :string,
      stockTicker: :string,
      taxId: :string
    ]
  end
end
