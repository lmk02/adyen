defmodule Adyen.Account.V3.BusinessDetails do
  @moduledoc """
  Provides struct and type for a BusinessDetails
  """

  @type t :: %__MODULE__{
          doingBusinessAs: String.t() | nil,
          legalBusinessName: String.t() | nil,
          listedUltimateParentCompany: [Adyen.Account.V3.UltimateParentCompanyWrapper.t()] | nil,
          shareholders: [Adyen.Account.V3.ShareholderContactWrapper.t()] | nil,
          signatories: [Adyen.Account.V3.SignatoryContactWrapper.t()] | nil,
          taxId: String.t() | nil
        }

  defstruct [
    :doingBusinessAs,
    :legalBusinessName,
    :listedUltimateParentCompany,
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
      listedUltimateParentCompany: [{Adyen.Account.V3.UltimateParentCompanyWrapper, :t}],
      shareholders: [{Adyen.Account.V3.ShareholderContactWrapper, :t}],
      signatories: [{Adyen.Account.V3.SignatoryContactWrapper, :t}],
      taxId: :string
    ]
  end
end
