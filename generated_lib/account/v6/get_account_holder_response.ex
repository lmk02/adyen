defmodule Adyen.Account.V6.GetAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a GetAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          accountHolderDetails: Adyen.Account.V6.AccountHolderDetails.t() | nil,
          accountHolderStatus: Adyen.Account.V6.AccountHolderStatus.t() | nil,
          accounts: [Adyen.Account.V6.Account.t()] | nil,
          description: String.t() | nil,
          invalidFields: [Adyen.Account.V6.ErrorFieldType.t()] | nil,
          legalEntity: String.t() | nil,
          migrationData: Adyen.Account.V6.MigrationData.t() | nil,
          primaryCurrency: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          systemUpToDateTime: DateTime.t() | nil,
          verification: Adyen.Account.V6.KYCVerificationResult.t() | nil,
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
      accountHolderDetails: {Adyen.Account.V6.AccountHolderDetails, :t},
      accountHolderStatus: {Adyen.Account.V6.AccountHolderStatus, :t},
      accounts: [{Adyen.Account.V6.Account, :t}],
      description: :string,
      invalidFields: [{Adyen.Account.V6.ErrorFieldType, :t}],
      legalEntity:
        {:enum, ["Business", "Individual", "NonProfit", "Partnership", "PublicCompany"]},
      migrationData: {Adyen.Account.V6.MigrationData, :t},
      primaryCurrency: :string,
      pspReference: :string,
      resultCode: :string,
      systemUpToDateTime: {:string, "date-time"},
      verification: {Adyen.Account.V6.KYCVerificationResult, :t},
      verificationProfile: :string
    ]
  end
end
