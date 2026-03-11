defmodule Adyen.Accounts.PayoutMethod do
  @moduledoc """
  Provides struct and type for a PayoutMethod
  """

  @type t :: %__MODULE__{
          merchantAccount: String.t(),
          payoutMethodCode: String.t() | nil,
          payoutMethodReference: String.t() | nil,
          recurringDetailReference: String.t(),
          shopperReference: String.t()
        }

  defstruct [
    :merchantAccount,
    :payoutMethodCode,
    :payoutMethodReference,
    :recurringDetailReference,
    :shopperReference
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantAccount: :string,
      payoutMethodCode: :string,
      payoutMethodReference: :string,
      recurringDetailReference: :string,
      shopperReference: :string
    ]
  end
end
