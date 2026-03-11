defmodule Adyen.Funds.PayoutAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a PayoutAccountHolderResponse
  """

  @type t :: %__MODULE__{
          bankAccountUUID: String.t() | nil,
          invalidFields: [Adyen.Funds.ErrorFieldType.t()] | nil,
          merchantReference: String.t() | nil,
          payoutSpeed: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [
    :bankAccountUUID,
    :invalidFields,
    :merchantReference,
    :payoutSpeed,
    :pspReference,
    :resultCode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bankAccountUUID: :string,
      invalidFields: [{Adyen.Funds.ErrorFieldType, :t}],
      merchantReference: :string,
      payoutSpeed: {:enum, ["INSTANT", "SAME_DAY", "STANDARD"]},
      pspReference: :string,
      resultCode: :string
    ]
  end
end
