defmodule Adyen.Accounts.SuspendAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a SuspendAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountHolderStatus: Adyen.Accounts.AccountHolderStatus.t() | nil,
          invalidFields: [Adyen.Accounts.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:accountHolderStatus, :invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderStatus: {Adyen.Accounts.AccountHolderStatus, :t},
      invalidFields: [{Adyen.Accounts.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
