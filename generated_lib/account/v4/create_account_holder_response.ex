defmodule Adyen.Account.V4.CreateAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a CreateAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountCode: String.t() | nil,
          accountHolderCode: String.t() | nil,
          accountHolderDetails: Adyen.Account.V4.AccountHolderDetails.t() | nil,
          accountHolderStatus: Adyen.Account.V4.AccountHolderStatus.t() | nil,
          description: String.t() | nil,
          invalidFields: [Adyen.Account.V4.ErrorFieldTypeWrapper.t()] | nil,
          legalEntity: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil,
          verification: Adyen.Account.V4.KYCVerificationResult.t() | nil
        }

  defstruct [
    :accountCode,
    :accountHolderCode,
    :accountHolderDetails,
    :accountHolderStatus,
    :description,
    :invalidFields,
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
      accountCode: :string,
      accountHolderCode: :string,
      accountHolderDetails: {Adyen.Account.V4.AccountHolderDetails, :t},
      accountHolderStatus: {Adyen.Account.V4.AccountHolderStatus, :t},
      description: :string,
      invalidFields: [{Adyen.Account.V4.ErrorFieldTypeWrapper, :t}],
      legalEntity: {:enum, ["Business", "Individual", "NonProfit"]},
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean,
      verification: {Adyen.Account.V4.KYCVerificationResult, :t}
    ]
  end
end
