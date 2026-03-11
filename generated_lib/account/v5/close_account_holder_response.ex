defmodule Adyen.Account.V5.CloseAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a CloseAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountHolderStatus: Adyen.Account.V5.AccountHolderStatus.t() | nil,
          invalidFields: [Adyen.Account.V5.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:accountHolderStatus, :invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderStatus: {Adyen.Account.V5.AccountHolderStatus, :t},
      invalidFields: [{Adyen.Account.V5.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
