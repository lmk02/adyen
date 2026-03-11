defmodule Adyen.Account.V5.KYCVerificationResult do
  @moduledoc """
  Provides struct and type for a KYCVerificationResult
  """

  @type t :: %__MODULE__{
          accountHolder: Adyen.Account.V5.KYCCheckResult.t() | nil,
          bankAccounts: [Adyen.Account.V5.KYCBankAccountCheckResult.t()] | nil,
          cards: [Adyen.Account.V5.KYCCardCheckResult.t()] | nil,
          shareholders: [Adyen.Account.V5.KYCShareholderCheckResult.t()] | nil,
          signatories: [Adyen.Account.V5.KYCSignatoryCheckResult.t()] | nil
        }

  defstruct [:accountHolder, :bankAccounts, :cards, :shareholders, :signatories]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {Adyen.Account.V5.KYCCheckResult, :t},
      bankAccounts: [{Adyen.Account.V5.KYCBankAccountCheckResult, :t}],
      cards: [{Adyen.Account.V5.KYCCardCheckResult, :t}],
      shareholders: [{Adyen.Account.V5.KYCShareholderCheckResult, :t}],
      signatories: [{Adyen.Account.V5.KYCSignatoryCheckResult, :t}]
    ]
  end
end
