defmodule Adyen.Funds.PayoutAccountHolderRequest do
  @moduledoc """
  Provides struct and type for a PayoutAccountHolderRequest
  """

  @type t :: %__MODULE__{
          accountCode: String.t(),
          accountHolderCode: String.t(),
          amount: Adyen.Funds.Amount.t() | nil,
          bankAccountUUID: String.t() | nil,
          description: String.t() | nil,
          merchantReference: String.t() | nil,
          payoutMethodCode: String.t() | nil,
          payoutSpeed: String.t() | nil
        }

  defstruct [
    :accountCode,
    :accountHolderCode,
    :amount,
    :bankAccountUUID,
    :description,
    :merchantReference,
    :payoutMethodCode,
    :payoutSpeed
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountCode: :string,
      accountHolderCode: :string,
      amount: {Adyen.Funds.Amount, :t},
      bankAccountUUID: :string,
      description: :string,
      merchantReference: :string,
      payoutMethodCode: :string,
      payoutSpeed: {:enum, ["INSTANT", "SAME_DAY", "STANDARD"]}
    ]
  end
end
