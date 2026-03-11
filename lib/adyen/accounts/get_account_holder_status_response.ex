defmodule Adyen.Accounts.GetAccountHolderStatusResponse do
  @moduledoc """
  Provides struct and type for a GetAccountHolderStatusResponse
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          accountHolderStatus: Adyen.Accounts.AccountHolderStatus.t() | nil,
          invalidFields: [Adyen.Accounts.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:accountHolderCode, :accountHolderStatus, :invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      accountHolderStatus: {Adyen.Accounts.AccountHolderStatus, :t},
      invalidFields: [{Adyen.Accounts.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
