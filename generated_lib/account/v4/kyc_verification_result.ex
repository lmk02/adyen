defmodule Adyen.Account.V4.KYCVerificationResult do
  @moduledoc """
  Provides struct and type for a KYCVerificationResult
  """

  @type t :: %__MODULE__{
          accountHolder: Adyen.Account.V4.KYCCheckResult.t() | nil,
          bankAccounts: [Adyen.Account.V4.KYCBankAccountCheckResult.t()] | nil,
          shareholders: [Adyen.Account.V4.KYCShareholderCheckResult.t()] | nil,
          signatories: [Adyen.Account.V4.KYCSignatoryCheckResult.t()] | nil
        }

  defstruct [:accountHolder, :bankAccounts, :shareholders, :signatories]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {Adyen.Account.V4.KYCCheckResult, :t},
      bankAccounts: [{Adyen.Account.V4.KYCBankAccountCheckResult, :t}],
      shareholders: [{Adyen.Account.V4.KYCShareholderCheckResult, :t}],
      signatories: [{Adyen.Account.V4.KYCSignatoryCheckResult, :t}]
    ]
  end
end
