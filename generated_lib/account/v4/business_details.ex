defmodule Adyen.Account.V4.BusinessDetails do
  @moduledoc """
  Provides struct and type for a BusinessDetails
  """

  @type t :: %__MODULE__{
          doingBusinessAs: String.t() | nil,
          legalBusinessName: String.t() | nil,
          listedUltimateParentCompany: [Adyen.Account.V4.UltimateParentCompanyWrapper.t()] | nil,
          registrationNumber: String.t() | nil,
          shareholders: [Adyen.Account.V4.ShareholderContactWrapper.t()] | nil,
          signatories: [Adyen.Account.V4.SignatoryContactWrapper.t()] | nil,
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
      listedUltimateParentCompany: [{Adyen.Account.V4.UltimateParentCompanyWrapper, :t}],
      registrationNumber: :string,
      shareholders: [{Adyen.Account.V4.ShareholderContactWrapper, :t}],
      signatories: [{Adyen.Account.V4.SignatoryContactWrapper, :t}],
      taxId: :string
    ]
  end
end
