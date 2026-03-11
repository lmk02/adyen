defmodule Adyen.Management.CreateCompanyApiCredentialRequest do
  @moduledoc """
  Provides struct and type for a CreateCompanyApiCredentialRequest
  """

  @type t :: %__MODULE__{
          allowedOrigins: [String.t()] | nil,
          associatedMerchantAccounts: [String.t()] | nil,
          description: String.t() | nil,
          roles: [String.t()] | nil
        }

  defstruct [:allowedOrigins, :associatedMerchantAccounts, :description, :roles]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      allowedOrigins: [:string],
      associatedMerchantAccounts: [:string],
      description: :string,
      roles: [:string]
    ]
  end
end
