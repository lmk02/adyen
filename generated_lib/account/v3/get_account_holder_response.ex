defmodule Adyen.Account.V3.GetAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a GetAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          accountHolderDetails: Adyen.Account.V3.AccountHolderDetails.t() | nil,
          accountHolderStatus: Adyen.Account.V3.AccountHolderStatus.t() | nil,
          accounts: [Adyen.Account.V3.AccountWrapper.t()] | nil,
          legalEntity: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil,
          verification: Adyen.Account.V3.KYCVerificationResult.t() | nil
        }

  defstruct [
    :accountHolderCode,
    :accountHolderDetails,
    :accountHolderStatus,
    :accounts,
    :legalEntity,
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
      accountHolderDetails: {Adyen.Account.V3.AccountHolderDetails, :t},
      accountHolderStatus: {Adyen.Account.V3.AccountHolderStatus, :t},
      accounts: [{Adyen.Account.V3.AccountWrapper, :t}],
      legalEntity: {:enum, ["Business", "Individual", "NonProfit"]},
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean,
      verification: {Adyen.Account.V3.KYCVerificationResult, :t}
    ]
  end
end
