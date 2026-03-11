defmodule Adyen.Account.V3.UpdateAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a UpdateAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          accountHolderDetails: Adyen.Account.V3.AccountHolderDetails.t() | nil,
          accountHolderStatus: Adyen.Account.V3.AccountHolderStatus.t() | nil,
          invalidFields: [Adyen.Account.V3.ErrorFieldTypeWrapper.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil,
          updatedFields: [Adyen.Account.V3.FieldTypeWrapper.t()] | nil,
          verification: Adyen.Account.V3.KYCVerificationResult.t() | nil
        }

  defstruct [
    :accountHolderCode,
    :accountHolderDetails,
    :accountHolderStatus,
    :invalidFields,
    :pspReference,
    :resultCode,
    :submittedAsync,
    :updatedFields,
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
      invalidFields: [{Adyen.Account.V3.ErrorFieldTypeWrapper, :t}],
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean,
      updatedFields: [{Adyen.Account.V3.FieldTypeWrapper, :t}],
      verification: {Adyen.Account.V3.KYCVerificationResult, :t}
    ]
  end
end
