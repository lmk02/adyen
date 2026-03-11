defmodule Adyen.Account.V3.KYCVerificationResult do
  @moduledoc """
  Provides struct and type for a KYCVerificationResult
  """

  @type t :: %__MODULE__{
          accountHolder: Adyen.Account.V3.KYCCheckResult.t() | nil,
          bankAccounts: [Adyen.Account.V3.KYCBankAccountCheckResult.t()] | nil,
          shareholders: [Adyen.Account.V3.KYCShareholderCheckResult.t()] | nil,
          signatories: [Adyen.Account.V3.KYCSignatoryCheckResult.t()] | nil
        }

  defstruct [:accountHolder, :bankAccounts, :shareholders, :signatories]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {Adyen.Account.V3.KYCCheckResult, :t},
      bankAccounts: [{Adyen.Account.V3.KYCBankAccountCheckResult, :t}],
      shareholders: [{Adyen.Account.V3.KYCShareholderCheckResult, :t}],
      signatories: [{Adyen.Account.V3.KYCSignatoryCheckResult, :t}]
    ]
  end
end
