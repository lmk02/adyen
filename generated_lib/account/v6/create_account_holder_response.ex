defmodule Adyen.Account.V6.CreateAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a CreateAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountCode: String.t() | nil,
          accountHolderCode: String.t() | nil,
          accountHolderDetails: Adyen.Account.V6.AccountHolderDetails.t() | nil,
          accountHolderStatus: Adyen.Account.V6.AccountHolderStatus.t() | nil,
          description: String.t() | nil,
          invalidFields: [Adyen.Account.V6.ErrorFieldType.t()] | nil,
          legalEntity: String.t() | nil,
          primaryCurrency: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          verification: Adyen.Account.V6.KYCVerificationResult.t() | nil,
          verificationProfile: String.t() | nil
        }

  defstruct [
    :accountCode,
    :accountHolderCode,
    :accountHolderDetails,
    :accountHolderStatus,
    :description,
    :invalidFields,
    :legalEntity,
    :primaryCurrency,
    :pspReference,
    :resultCode,
    :verification,
    :verificationProfile
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountCode: :string,
      accountHolderCode: :string,
      accountHolderDetails: {Adyen.Account.V6.AccountHolderDetails, :t},
      accountHolderStatus: {Adyen.Account.V6.AccountHolderStatus, :t},
      description: :string,
      invalidFields: [{Adyen.Account.V6.ErrorFieldType, :t}],
      legalEntity:
        {:enum, ["Business", "Individual", "NonProfit", "Partnership", "PublicCompany"]},
      primaryCurrency: :string,
      pspReference: :string,
      resultCode: :string,
      verification: {Adyen.Account.V6.KYCVerificationResult, :t},
      verificationProfile: :string
    ]
  end
end
