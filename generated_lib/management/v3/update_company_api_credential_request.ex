defmodule Adyen.Management.V3.UpdateCompanyApiCredentialRequest do
  @moduledoc """
  Provides struct and type for a UpdateCompanyApiCredentialRequest
  """

  @type t :: %__MODULE__{
          active: boolean | nil,
          allowedOrigins: [String.t()] | nil,
          associatedMerchantAccounts: [String.t()] | nil,
          description: String.t() | nil,
          roles: [String.t()] | nil,
          subjectDN: String.t() | nil
        }

  defstruct [
    :active,
    :allowedOrigins,
    :associatedMerchantAccounts,
    :description,
    :roles,
    :subjectDN
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      active: :boolean,
      allowedOrigins: [:string],
      associatedMerchantAccounts: [:string],
      description: :string,
      roles: [:string],
      subjectDN: :string
    ]
  end
end
