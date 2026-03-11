defmodule Adyen.Account.V4.GetAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a GetAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          accountHolderDetails: Adyen.Account.V4.AccountHolderDetails.t() | nil,
          accountHolderStatus: Adyen.Account.V4.AccountHolderStatus.t() | nil,
          accounts: [Adyen.Account.V4.AccountWrapper.t()] | nil,
          description: String.t() | nil,
          legalEntity: String.t() | nil,
          primaryCurrency: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil,
          verification: Adyen.Account.V4.KYCVerificationResult.t() | nil
        }

  defstruct [
    :accountHolderCode,
    :accountHolderDetails,
    :accountHolderStatus,
    :accounts,
    :description,
    :legalEntity,
    :primaryCurrency,
    :pspReference,
    :resultCode,
    :submittedAsync,
    :verification
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      accountHolderDetails: {Adyen.Account.V4.AccountHolderDetails, :t},
      accountHolderStatus: {Adyen.Account.V4.AccountHolderStatus, :t},
      accounts: [{Adyen.Account.V4.AccountWrapper, :t}],
      description: :string,
      legalEntity: {:enum, ["Business", "Individual", "NonProfit"]},
      primaryCurrency: :string,
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean,
      verification: {Adyen.Account.V4.KYCVerificationResult, :t}
    ]
  end
end
