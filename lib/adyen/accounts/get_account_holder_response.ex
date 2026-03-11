defmodule Adyen.Accounts.GetAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a GetAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          accountHolderDetails: Adyen.Accounts.AccountHolderDetails.t() | nil,
          accountHolderStatus: Adyen.Accounts.AccountHolderStatus.t() | nil,
          accounts: [Adyen.Accounts.Account.t()] | nil,
          description: String.t() | nil,
          invalidFields: [Adyen.Accounts.ErrorFieldType.t()] | nil,
          legalEntity: String.t() | nil,
          migrationData: Adyen.Accounts.MigrationData.t() | nil,
          primaryCurrency: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          systemUpToDateTime: DateTime.t() | nil,
          verification: Adyen.Accounts.KYCVerificationResult.t() | nil,
          verificationProfile: String.t() | nil
        }

  defstruct [
    :accountHolderCode,
    :accountHolderDetails,
    :accountHolderStatus,
    :accounts,
    :description,
    :invalidFields,
    :legalEntity,
    :migrationData,
    :primaryCurrency,
    :pspReference,
    :resultCode,
    :systemUpToDateTime,
    :verification,
    :verificationProfile
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      accountHolderDetails: {Adyen.Accounts.AccountHolderDetails, :t},
      accountHolderStatus: {Adyen.Accounts.AccountHolderStatus, :t},
      accounts: [{Adyen.Accounts.Account, :t}],
      description: :string,
      invalidFields: [{Adyen.Accounts.ErrorFieldType, :t}],
      legalEntity:
        {:enum, ["Business", "Individual", "NonProfit", "Partnership", "PublicCompany"]},
      migrationData: {Adyen.Accounts.MigrationData, :t},
      primaryCurrency: :string,
      pspReference: :string,
      resultCode: :string,
      systemUpToDateTime: {:string, "date-time"},
      verification: {Adyen.Accounts.KYCVerificationResult, :t},
      verificationProfile: :string
    ]
  end
end
