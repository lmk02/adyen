defmodule Adyen.Account.V3.CreateAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a CreateAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountCode: String.t() | nil,
          accountHolderCode: String.t() | nil,
          accountHolderDetails: Adyen.Account.V3.AccountHolderDetails.t() | nil,
          accountHolderStatus: Adyen.Account.V3.AccountHolderStatus.t() | nil,
          invalidFields: [Adyen.Account.V3.ErrorFieldTypeWrapper.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil,
          verification: Adyen.Account.V3.KYCVerificationResult.t() | nil
        }

  defstruct [
    :accountCode,
    :accountHolderCode,
    :accountHolderDetails,
    :accountHolderStatus,
    :invalidFields,
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
      accountCode: :string,
      accountHolderCode: :string,
      accountHolderDetails: {Adyen.Account.V3.AccountHolderDetails, :t},
      accountHolderStatus: {Adyen.Account.V3.AccountHolderStatus, :t},
      invalidFields: [{Adyen.Account.V3.ErrorFieldTypeWrapper, :t}],
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean,
      verification: {Adyen.Account.V3.KYCVerificationResult, :t}
    ]
  end
end
