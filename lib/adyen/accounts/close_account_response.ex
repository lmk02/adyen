defmodule Adyen.Accounts.CloseAccountResponse do
  @moduledoc """
  Provides struct and type for a CloseAccountResponse
  """

  @type t :: %__MODULE__{
          accountCode: String.t() | nil,
          invalidFields: [Adyen.Accounts.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:accountCode, :invalidFields, :pspReference, :resultCode, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountCode: :string,
      invalidFields: [{Adyen.Accounts.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string,
      status: {:enum, ["Active", "Closed", "Inactive", "Suspended"]}
    ]
  end
end
